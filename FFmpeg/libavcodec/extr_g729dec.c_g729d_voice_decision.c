
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int DECISION_INTERMEDIATE ;
 int DECISION_NOISE ;
 int DECISION_VOICE ;

__attribute__((used)) static int16_t g729d_voice_decision(int onset, int prev_voice_decision, const int16_t* past_gain_pitch)
{
    int i, low_gain_pitch_cnt, voice_decision;

    if (past_gain_pitch[0] >= 14745) {
        voice_decision = DECISION_VOICE;
    } else if (past_gain_pitch[0] <= 9830) {
        voice_decision = DECISION_NOISE;
    } else {
        voice_decision = DECISION_INTERMEDIATE;
    }

    for (i = 0, low_gain_pitch_cnt = 0; i < 6; i++)
        if (past_gain_pitch[i] < 9830)
            low_gain_pitch_cnt++;

    if (low_gain_pitch_cnt > 2 && !onset)
        voice_decision = DECISION_NOISE;

    if (!onset && voice_decision > prev_voice_decision + 1)
        voice_decision--;

    if (onset && voice_decision < DECISION_VOICE)
        voice_decision++;

    return voice_decision;
}
