
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
printFormat(void)
{
    fprintf(stderr,
        "The copyright string should be contained in the NSHumanReadableCopyright key.\n"
        "It should be of the format:\n"
        "\tCopyright © [year(s) of publication] Apple Inc. All rights reserved.\n\n"
        "where [year(s) of publication] is a comma-separated list of years and/or\n"
        "year ranges, e.g., 2004, 2006-2008.  Years must be four digits.  Year ranges\n"
        "may not contain spaces and must use four digits for both years.\n\n"
        "The following are examples of valid copyright strings:\n"
        "\tCopyright © 2008 Apple Inc. All rights reserved.\n"
        "\tCopyright © 2004-2008 Apple Inc. All rights reserved.\n"
        "\tCopyright © 1998,2000-2002,2004,2006-2008 Apple Inc. All rights reserved.\n");
}
