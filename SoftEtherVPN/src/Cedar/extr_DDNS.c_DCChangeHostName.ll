; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCChangeHostName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_DDNS.c_DCChangeHostName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@ERR_DDNS_HOSTNAME_TOO_LONG = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DCChangeHostName(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = icmp eq %struct.TYPE_11__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %15, i64* %3, align 8
  br label %71

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @StrLen(i8* %17)
  %19 = icmp sgt i32 %18, 32
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @ERR_DDNS_HOSTNAME_TOO_LONG, align 8
  store i64 %21, i64* %3, align 8
  br label %71

22:                                               ; preds = %16
  %23 = call i32 @Zero(%struct.TYPE_10__* %7, i32 4)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @StrCpy(i32 %25, i32 4, i8* %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ERR_NO_ERROR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = call i64 @DCRegister(%struct.TYPE_11__* %34, i32 0, %struct.TYPE_10__* %7, i32* null)
  store i64 %35, i64* %6, align 8
  br label %56

36:                                               ; preds = %22
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ERR_NO_ERROR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = call i64 @DCRegister(%struct.TYPE_11__* %43, i32 1, %struct.TYPE_10__* %7, i32* null)
  store i64 %44, i64* %6, align 8
  br label %55

45:                                               ; preds = %36
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = call i64 @DCRegister(%struct.TYPE_11__* %46, i32 1, %struct.TYPE_10__* %7, i32* null)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @ERR_NO_ERROR, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = call i64 @DCRegister(%struct.TYPE_11__* %52, i32 0, %struct.TYPE_10__* %7, i32* null)
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @ERR_NO_ERROR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = call i32 @DCGetStatus(%struct.TYPE_11__* %61, i32* %8)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SiApplyAzureConfig(i32 %67, i32* %8)
  br label %69

69:                                               ; preds = %60, %56
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %69, %20, %14
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i64 @DCRegister(%struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @DCGetStatus(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @SiApplyAzureConfig(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
