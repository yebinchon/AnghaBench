; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_File.c_Stream_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_File.c_Stream_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Stream_Methods.methods = internal global [9 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.20, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.23, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"sopen\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"var sopen(var self, var resource, var options);\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Open the stream `self` with a given `resource` and `options`.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sclose\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"void sclose(var self);\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Close the stream `self`.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"sseek\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"void sseek(var self, int64_t pos, int origin);\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"Seek to the position `pos` from some `origin` in the stream `self`.\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"stell\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"int64_t stell(var self);\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Return the current position of the stream `stell`.\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"sflush\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"void sflush(var self);\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Flush the buffered contents of stream `self`.\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"seof\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"bool seof(var self);\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"Returns true if there is no more information in the stream.\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"sread\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"size_t sread(var self, void* output, size_t size);\00", align 1
@.str.20 = private unnamed_addr constant [69 x i8] c"Read `size` bytes from the stream `self` and write them to `output`.\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"swrite\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"size_t swrite(var self, void* input, size_t size);\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c"Write `size` bytes to the stream `self` and read them from `input`.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Stream_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Stream_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([9 x %struct.Method], [9 x %struct.Method]* @Stream_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
