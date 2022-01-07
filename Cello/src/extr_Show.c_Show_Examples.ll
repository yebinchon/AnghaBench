; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Show.c_Show_Examples.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Show.c_Show_Examples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Example = type { i8*, i8* }

@Show_Examples.examples = internal global [5 x %struct.Example] [%struct.Example { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([217 x i8], [217 x i8]* @.str.3, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.5, i32 0, i32 0) }, %struct.Example { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.7, i32 0, i32 0) }, %struct.Example zeroinitializer], align 16
@.str = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"println(\22Hello %s!\22, $S(\22World\22));\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"File Writing\00", align 1
@.str.3 = private unnamed_addr constant [217 x i8] c"with (f in new(File, $S(\22prices.txt\22), $S(\22wb\22))) {\0A  print_to(f, 0, \22%$ :: %$\\n\22, $S(\22Banana\22), $I(57));\0A  print_to(f, 0, \22%$ :: %$\\n\22, $S(\22Apple\22),  $I(22));\0A  print_to(f, 0, \22%$ :: %$\\n\22, $S(\22Pear\22),   $I(16));\0A}\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"String Scanning\00", align 1
@.str.5 = private unnamed_addr constant [208 x i8] c"var input = $S(\221 and 52 then 78\22);\0A\0Avar i0 = $I(0), i1 = $I(0), i2 = $I(0);\0Ascan_from(input, 0, \22%i and %i then %i\22, i0, i1, i2);\0A\0A/* i0: 1, i1: 52, i2: 78 */\0Aprintln(\22i0: %$, i1: %$, i2: %$\22, i0, i1, i2);\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"String Printing\00", align 1
@.str.7 = private unnamed_addr constant [174 x i8] c"var greeting = new(String);\0Aprint_to(greeting, 0, \22Hello %s %s, %s?\22, \0A  $S(\22Mr\22), $S(\22Johnson\22), $S(\22how are you?\22));\0A\0A/* Hello Mr Johnson, how are you? */\0Ashow(greeting);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Example* ()* @Show_Examples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Example* @Show_Examples() #0 {
  ret %struct.Example* getelementptr inbounds ([5 x %struct.Example], [5 x %struct.Example]* @Show_Examples.examples, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
