; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_ConstructDummyJsonRpcRequest.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_ConstructDummyJsonRpcRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"jsonrpc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ConstructDummyJsonRpcRequest(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %10 = call i32 @Rand(i32* %9, i32 64)
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %13 = call i32 @BinToStr(i8* %11, i32 64, i32* %12, i32 64)
  %14 = call i32* (...) @JsonNewObject()
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @JsonObject(i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @JsonSetStr(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @JsonSetStr(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @JsonSet(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %27 = call i32 @JsonSetStr(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  %28 = load i32*, i32** %5, align 8
  ret i32* %28
}

declare dso_local i32 @Rand(i32*, i32) #1

declare dso_local i32 @BinToStr(i8*, i32, i32*, i32) #1

declare dso_local i32* @JsonNewObject(...) #1

declare dso_local i32* @JsonObject(i32*) #1

declare dso_local i32 @JsonSetStr(i32*, i8*, i8*) #1

declare dso_local i32 @JsonSet(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
