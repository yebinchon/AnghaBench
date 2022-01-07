; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpJsonTimestamp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpJsonTimestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".%06ld\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c".%03ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpJsonTimestamp(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [35 x i8], align 16
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = bitcast [35 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 35, i1 false)
  store i32 1000, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1000000, i32* %9, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = call %struct.tm* @localtime(i32* %10)
  store %struct.tm* %20, %struct.tm** %8, align 8
  %21 = getelementptr inbounds [35 x i8], [35 x i8]* %7, i64 0, i64 0
  %22 = load %struct.tm*, %struct.tm** %8, align 8
  %23 = call i64 @strftime(i8* %21, i32 35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.tm* %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %16
  %28 = getelementptr inbounds [35 x i8], [35 x i8]* %7, i64 0, i64 0
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %9, align 4
  %34 = srem i32 %32, %33
  %35 = call i64 @snprintf(i8* %31, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  br label %53

40:                                               ; preds = %16
  %41 = getelementptr inbounds [35 x i8], [35 x i8]* %7, i64 0, i64 0
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %9, align 4
  %47 = srem i32 %45, %46
  %48 = call i64 @snprintf(i8* %44, i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %40, %27
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds [35 x i8], [35 x i8]* %7, i64 0, i64 0
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @httpJsonString(i32* %54, i8* %55, i32 %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.tm* @localtime(i32*) #2

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @httpJsonString(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
