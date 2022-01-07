; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_JsonRpcNewError.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_JsonRpcNewError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i32] [i32 69, i32 114, i32 114, i32 111, i32 114, i32 32, i32 99, i32 111, i32 100, i32 101, i32 32, i32 37, i32 117, i32 0], align 4
@.str.1 = private unnamed_addr constant [18 x i32] [i32 69, i32 114, i32 114, i32 111, i32 114, i32 32, i32 99, i32 111, i32 100, i32 101, i32 32, i32 37, i32 117, i32 58, i32 32, i32 37, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @JsonRpcNewError(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @UniIsEmptyStr(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = mul nuw i64 4, %12
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32*, i32, i8*, i32, ...) @UniFormat(i32* %14, i32 %20, i8* bitcast ([14 x i32]* @.str to i8*), i32 %21)
  br label %29

23:                                               ; preds = %2
  %24 = mul nuw i64 4, %12
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 (i32*, i32, i8*, i32, ...) @UniFormat(i32* %14, i32 %25, i8* bitcast ([18 x i32]* @.str.1 to i8*), i32 %26, i32* %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = call i32* (...) @JsonNewObject()
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @JsonValueGetObject(i32* %31)
  store i32* %32, i32** %8, align 8
  %33 = call i32* (...) @JsonNewObject()
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @JsonValueGetObject(i32* %34)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @JsonSet(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %37)
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @JsonSetNumber(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @JsonSetUniStr(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %14)
  %44 = load i32*, i32** %7, align 8
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  ret i32* %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @UniIsEmptyStr(i32*) #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32, ...) #2

declare dso_local i32* @JsonNewObject(...) #2

declare dso_local i32* @JsonValueGetObject(i32*) #2

declare dso_local i32 @JsonSet(i32*, i8*, i32*) #2

declare dso_local i32 @JsonSetNumber(i32*, i8*, i32) #2

declare dso_local i32 @JsonSetUniStr(i32*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
