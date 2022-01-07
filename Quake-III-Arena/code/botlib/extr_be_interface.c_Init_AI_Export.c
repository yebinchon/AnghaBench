
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int GeneticParentsAndChildSelection; int BotResetWeaponState; int BotFreeWeaponState; int BotAllocWeaponState; int BotLoadWeaponWeights; int BotGetWeaponInfo; int BotChooseBestFightWeapon; int BotAddAvoidSpot; int BotInitMoveState; int BotFreeMoveState; int BotAllocMoveState; int BotPredictVisiblePosition; int BotMovementViewTarget; int BotReachabilityArea; int BotResetLastAvoidReach; int BotResetAvoidReach; int BotMoveInDirection; int BotMoveToGoal; int BotResetMoveState; int BotFreeGoalState; int BotAllocGoalState; int BotMutateGoalFuzzyLogic; int BotSaveGoalFuzzyLogic; int BotInterbreedGoalFuzzyLogic; int BotFreeItemWeights; int BotLoadItemWeights; int BotUpdateEntityItems; int BotInitLevelItems; int BotSetAvoidGoalTime; int BotAvoidGoalTime; int BotGetMapLocationGoal; int BotGetNextCampSpotGoal; int BotGetLevelItemGoal; int BotItemGoalInVisButNotVisible; int BotTouchingGoal; int BotChooseNBGItem; int BotChooseLTGItem; int BotGetSecondGoal; int BotGetTopGoal; int BotGoalName; int BotDumpGoalStack; int BotDumpAvoidGoals; int BotEmptyGoalStack; int BotPopGoal; int BotPushGoal; int BotRemoveFromAvoidGoals; int BotResetAvoidGoals; int BotResetGoalState; int BotSetChatName; int BotSetChatGender; int BotLoadChatFile; int BotReplaceSynonyms; int UnifyWhiteSpaces; int BotMatchVariable; int BotFindMatch; int StringContains; int BotGetChatMessage; int BotEnterChat; int BotChatLength; int BotReplyChat; int BotNumInitialChats; int BotInitialChat; int BotNumConsoleMessages; int BotNextConsoleMessage; int BotRemoveConsoleMessage; int BotQueueConsoleMessage; int BotFreeChatState; int BotAllocChatState; int Characteristic_String; int Characteristic_BInteger; int Characteristic_Integer; int Characteristic_BFloat; int Characteristic_Float; int BotFreeCharacter; int BotLoadCharacter; } ;
typedef TYPE_1__ ai_export_t ;


 int BotAddAvoidSpot ;
 int BotAllocChatState ;
 int BotAllocGoalState ;
 int BotAllocMoveState ;
 int BotAllocWeaponState ;
 int BotAvoidGoalTime ;
 int BotChatLength ;
 int BotChooseBestFightWeapon ;
 int BotChooseLTGItem ;
 int BotChooseNBGItem ;
 int BotDumpAvoidGoals ;
 int BotDumpGoalStack ;
 int BotEmptyGoalStack ;
 int BotEnterChat ;
 int BotFindMatch ;
 int BotFreeCharacter ;
 int BotFreeChatState ;
 int BotFreeGoalState ;
 int BotFreeItemWeights ;
 int BotFreeMoveState ;
 int BotFreeWeaponState ;
 int BotGetChatMessage ;
 int BotGetLevelItemGoal ;
 int BotGetMapLocationGoal ;
 int BotGetNextCampSpotGoal ;
 int BotGetSecondGoal ;
 int BotGetTopGoal ;
 int BotGetWeaponInfo ;
 int BotGoalName ;
 int BotInitLevelItems ;
 int BotInitMoveState ;
 int BotInitialChat ;
 int BotInterbreedGoalFuzzyLogic ;
 int BotItemGoalInVisButNotVisible ;
 int BotLoadCharacter ;
 int BotLoadChatFile ;
 int BotLoadItemWeights ;
 int BotLoadWeaponWeights ;
 int BotMatchVariable ;
 int BotMoveInDirection ;
 int BotMoveToGoal ;
 int BotMovementViewTarget ;
 int BotMutateGoalFuzzyLogic ;
 int BotNextConsoleMessage ;
 int BotNumConsoleMessages ;
 int BotNumInitialChats ;
 int BotPopGoal ;
 int BotPredictVisiblePosition ;
 int BotPushGoal ;
 int BotQueueConsoleMessage ;
 int BotReachabilityArea ;
 int BotRemoveConsoleMessage ;
 int BotRemoveFromAvoidGoals ;
 int BotReplaceSynonyms ;
 int BotReplyChat ;
 int BotResetAvoidGoals ;
 int BotResetAvoidReach ;
 int BotResetGoalState ;
 int BotResetLastAvoidReach ;
 int BotResetMoveState ;
 int BotResetWeaponState ;
 int BotSaveGoalFuzzyLogic ;
 int BotSetAvoidGoalTime ;
 int BotSetChatGender ;
 int BotSetChatName ;
 int BotTouchingGoal ;
 int BotUpdateEntityItems ;
 int Characteristic_BFloat ;
 int Characteristic_BInteger ;
 int Characteristic_Float ;
 int Characteristic_Integer ;
 int Characteristic_String ;
 int GeneticParentsAndChildSelection ;
 int StringContains ;
 int UnifyWhiteSpaces ;

__attribute__((used)) static void Init_AI_Export( ai_export_t *ai ) {



 ai->BotLoadCharacter = BotLoadCharacter;
 ai->BotFreeCharacter = BotFreeCharacter;
 ai->Characteristic_Float = Characteristic_Float;
 ai->Characteristic_BFloat = Characteristic_BFloat;
 ai->Characteristic_Integer = Characteristic_Integer;
 ai->Characteristic_BInteger = Characteristic_BInteger;
 ai->Characteristic_String = Characteristic_String;



 ai->BotAllocChatState = BotAllocChatState;
 ai->BotFreeChatState = BotFreeChatState;
 ai->BotQueueConsoleMessage = BotQueueConsoleMessage;
 ai->BotRemoveConsoleMessage = BotRemoveConsoleMessage;
 ai->BotNextConsoleMessage = BotNextConsoleMessage;
 ai->BotNumConsoleMessages = BotNumConsoleMessages;
 ai->BotInitialChat = BotInitialChat;
 ai->BotNumInitialChats = BotNumInitialChats;
 ai->BotReplyChat = BotReplyChat;
 ai->BotChatLength = BotChatLength;
 ai->BotEnterChat = BotEnterChat;
 ai->BotGetChatMessage = BotGetChatMessage;
 ai->StringContains = StringContains;
 ai->BotFindMatch = BotFindMatch;
 ai->BotMatchVariable = BotMatchVariable;
 ai->UnifyWhiteSpaces = UnifyWhiteSpaces;
 ai->BotReplaceSynonyms = BotReplaceSynonyms;
 ai->BotLoadChatFile = BotLoadChatFile;
 ai->BotSetChatGender = BotSetChatGender;
 ai->BotSetChatName = BotSetChatName;



 ai->BotResetGoalState = BotResetGoalState;
 ai->BotResetAvoidGoals = BotResetAvoidGoals;
 ai->BotRemoveFromAvoidGoals = BotRemoveFromAvoidGoals;
 ai->BotPushGoal = BotPushGoal;
 ai->BotPopGoal = BotPopGoal;
 ai->BotEmptyGoalStack = BotEmptyGoalStack;
 ai->BotDumpAvoidGoals = BotDumpAvoidGoals;
 ai->BotDumpGoalStack = BotDumpGoalStack;
 ai->BotGoalName = BotGoalName;
 ai->BotGetTopGoal = BotGetTopGoal;
 ai->BotGetSecondGoal = BotGetSecondGoal;
 ai->BotChooseLTGItem = BotChooseLTGItem;
 ai->BotChooseNBGItem = BotChooseNBGItem;
 ai->BotTouchingGoal = BotTouchingGoal;
 ai->BotItemGoalInVisButNotVisible = BotItemGoalInVisButNotVisible;
 ai->BotGetLevelItemGoal = BotGetLevelItemGoal;
 ai->BotGetNextCampSpotGoal = BotGetNextCampSpotGoal;
 ai->BotGetMapLocationGoal = BotGetMapLocationGoal;
 ai->BotAvoidGoalTime = BotAvoidGoalTime;
 ai->BotSetAvoidGoalTime = BotSetAvoidGoalTime;
 ai->BotInitLevelItems = BotInitLevelItems;
 ai->BotUpdateEntityItems = BotUpdateEntityItems;
 ai->BotLoadItemWeights = BotLoadItemWeights;
 ai->BotFreeItemWeights = BotFreeItemWeights;
 ai->BotInterbreedGoalFuzzyLogic = BotInterbreedGoalFuzzyLogic;
 ai->BotSaveGoalFuzzyLogic = BotSaveGoalFuzzyLogic;
 ai->BotMutateGoalFuzzyLogic = BotMutateGoalFuzzyLogic;
 ai->BotAllocGoalState = BotAllocGoalState;
 ai->BotFreeGoalState = BotFreeGoalState;



 ai->BotResetMoveState = BotResetMoveState;
 ai->BotMoveToGoal = BotMoveToGoal;
 ai->BotMoveInDirection = BotMoveInDirection;
 ai->BotResetAvoidReach = BotResetAvoidReach;
 ai->BotResetLastAvoidReach = BotResetLastAvoidReach;
 ai->BotReachabilityArea = BotReachabilityArea;
 ai->BotMovementViewTarget = BotMovementViewTarget;
 ai->BotPredictVisiblePosition = BotPredictVisiblePosition;
 ai->BotAllocMoveState = BotAllocMoveState;
 ai->BotFreeMoveState = BotFreeMoveState;
 ai->BotInitMoveState = BotInitMoveState;
 ai->BotAddAvoidSpot = BotAddAvoidSpot;



 ai->BotChooseBestFightWeapon = BotChooseBestFightWeapon;
 ai->BotGetWeaponInfo = BotGetWeaponInfo;
 ai->BotLoadWeaponWeights = BotLoadWeaponWeights;
 ai->BotAllocWeaponState = BotAllocWeaponState;
 ai->BotFreeWeaponState = BotFreeWeaponState;
 ai->BotResetWeaponState = BotResetWeaponState;



 ai->GeneticParentsAndChildSelection = GeneticParentsAndChildSelection;
}
