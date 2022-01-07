; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-address.c_network_address_free.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-address.c_network_address_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: removing socket %s successful\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: removing socket %s failed: %s (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @network_address_free(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %72

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TRUE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %64

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %64

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 47
  br i1 %36, label %37, label %63

37:                                               ; preds = %26
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @g_remove(i8* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @G_STRLOC, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @g_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %44)
  br label %62

46:                                               ; preds = %37
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EPERM, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EACCES, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* @G_STRLOC, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = load i64, i64* @errno, align 8
  %58 = call i32 @strerror(i64 %57)
  %59 = load i64, i64* @errno, align 8
  %60 = call i32 @g_critical(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %56, i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %54, %50, %46
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %26
  br label %64

64:                                               ; preds = %63, %19, %14, %8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i64, i64* @TRUE, align 8
  %69 = call i32 @g_string_free(%struct.TYPE_6__* %67, i64 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = call i32 @g_free(%struct.TYPE_5__* %70)
  br label %72

72:                                               ; preds = %64, %7
  ret void
}

declare dso_local i32 @g_remove(i8*) #1

declare dso_local i32 @g_debug(i8*, i32, i8*) #1

declare dso_local i32 @g_critical(i8*, i32, i8*, i32, i64) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @g_string_free(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @g_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
