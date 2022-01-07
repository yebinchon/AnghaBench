
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compact_writer ;
 int csv_writer ;
 int default_writer ;
 int flat_writer ;
 int ini_writer ;
 int json_writer ;
 int writer_register (int *) ;
 int xml_writer ;

__attribute__((used)) static void writer_register_all(void)
{
    static int initialized;

    if (initialized)
        return;
    initialized = 1;

    writer_register(&default_writer);
    writer_register(&compact_writer);
    writer_register(&csv_writer);
    writer_register(&flat_writer);
    writer_register(&ini_writer);
    writer_register(&json_writer);
    writer_register(&xml_writer);
}
