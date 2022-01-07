
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FF_ARRAY_ELEMS (double const*) ;
 double exp (double) ;
 double const ff_eval_poly (double const*,int ,int) ;

__attribute__((used)) static inline double erf(double z)
{



    double result;


    if (z < 0)
        return -erf(-z);


    if (z == 0)
        return 0;
    else if (z < 1e-10)
        return z * 1.125 + z * 0.003379167095512573896158903121545171688;
    else if (z < 0.5) {





        static const double y = 1.044948577880859375;
        static const double p[] = {
            0.0834305892146531832907,
            -0.338165134459360935041,
            -0.0509990735146777432841,
            -0.00772758345802133288487,
            -0.000322780120964605683831,
        };
        static const double q[] = {
            1,
            0.455004033050794024546,
            0.0875222600142252549554,
            0.00858571925074406212772,
            0.000370900071787748000569,
        };
        double zz = z * z;
        return z * (y + ff_eval_poly(p, (sizeof(p) / sizeof((p)[0])), zz) / ff_eval_poly(q, (sizeof(q) / sizeof((q)[0])), zz));
    }

    else if (z < 1.5) {




        static const double y = 0.405935764312744140625;
        static const double p[] = {
            -0.098090592216281240205,
            0.178114665841120341155,
            0.191003695796775433986,
            0.0888900368967884466578,
            0.0195049001251218801359,
            0.00180424538297014223957,
        };
        static const double q[] = {
            1,
            1.84759070983002217845,
            1.42628004845511324508,
            0.578052804889902404909,
            0.12385097467900864233,
            0.0113385233577001411017,
            0.337511472483094676155e-5,
        };
        result = y + ff_eval_poly(p, (sizeof(p) / sizeof((p)[0])), z - 0.5) / ff_eval_poly(q, (sizeof(q) / sizeof((q)[0])), z - 0.5);
        result *= exp(-z * z) / z;
        return 1 - result;
    }
    else if (z < 2.5) {




        static const double y = 0.50672817230224609375;
        static const double p[] = {
            -0.0243500476207698441272,
            0.0386540375035707201728,
            0.04394818964209516296,
            0.0175679436311802092299,
            0.00323962406290842133584,
            0.000235839115596880717416,
        };
        static const double q[] = {
            1,
            1.53991494948552447182,
            0.982403709157920235114,
            0.325732924782444448493,
            0.0563921837420478160373,
            0.00410369723978904575884,
        };
        result = y + ff_eval_poly(p, (sizeof(p) / sizeof((p)[0])), z - 1.5) / ff_eval_poly(q, (sizeof(q) / sizeof((q)[0])), z - 1.5);
        result *= exp(-z * z) / z;
        return 1 - result;
    }
    else if (z < 4.5) {




        static const double y = 0.5405750274658203125;
        static const double p[] = {
            0.00295276716530971662634,
            0.0137384425896355332126,
            0.00840807615555585383007,
            0.00212825620914618649141,
            0.000250269961544794627958,
            0.113212406648847561139e-4,
        };
        static const double q[] = {
            1,
            1.04217814166938418171,
            0.442597659481563127003,
            0.0958492726301061423444,
            0.0105982906484876531489,
            0.000479411269521714493907,
        };
        result = y + ff_eval_poly(p, (sizeof(p) / sizeof((p)[0])), z - 3.5) / ff_eval_poly(q, (sizeof(q) / sizeof((q)[0])), z - 3.5);
        result *= exp(-z * z) / z;
        return 1 - result;
    }



    else if (z < 5.92) {




        static const double y = 0.5579090118408203125;
        static const double p[] = {
            0.00628057170626964891937,
            0.0175389834052493308818,
            -0.212652252872804219852,
            -0.687717681153649930619,
            -2.5518551727311523996,
            -3.22729451764143718517,
            -2.8175401114513378771,
        };
        static const double q[] = {
            1,
            2.79257750980575282228,
            11.0567237927800161565,
            15.930646027911794143,
            22.9367376522880577224,
            13.5064170191802889145,
            5.48409182238641741584,
        };
        result = y + ff_eval_poly(p, (sizeof(p) / sizeof((p)[0])), 1 / z) / ff_eval_poly(q, (sizeof(q) / sizeof((q)[0])), 1 / z);
        result *= exp(-z * z) / z;
        return 1 - result;
    }

    else if (z != z)
        return z;

    else
        return 1;
}
