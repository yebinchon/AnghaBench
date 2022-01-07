; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_File.c_File_Examples.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_File.c_File_Examples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Example = type { i8*, i8* }

@File_Examples.examples = internal global [4 x %struct.Example] [%struct.Example { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.3, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([215 x i8], [215 x i8]* @.str.5, i32 0, i32 0) }, %struct.Example zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"Usage\00", align 1
@.str.1 = private unnamed_addr constant [110 x i8] c"var x = new(File, $S(\22test.bin\22), $S(\22wb\22));\0Achar* data = \22hello\22;\0Aswrite(x, data, strlen(data));\0Asclose(x);\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Formatted Printing\00", align 1
@.str.3 = private unnamed_addr constant [168 x i8] c"var x = $(File, NULL);\0Asopen(x, $S(\22test.txt\22), $S(\22w\22));\0Aprint_to(x, 0, \22%$ is %$ \22, $S(\22Dan\22), $I(23));\0Aprint_to(x, 0, \22%$ is %$ \22, $S(\22Chess\22), $I(24));\0Asclose(x);\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Automatic Closing\00", align 1
@.str.5 = private unnamed_addr constant [215 x i8] c"with(f in new(File, $S(\22test.txt\22), $S(\22r\22))) {\0A  var k = new(String); resize(k, 100);\0A  var v = new(Int, $I(0));\0A  foreach (i in range($I(2))) {\0A    scan_from(f, 0, \22%$ is %$ \22, k, v);\0A    show(k); show(v);\0A  }\0A}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Example* ()* @File_Examples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Example* @File_Examples() #0 {
  ret %struct.Example* getelementptr inbounds ([4 x %struct.Example], [4 x %struct.Example]* @File_Examples.examples, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
