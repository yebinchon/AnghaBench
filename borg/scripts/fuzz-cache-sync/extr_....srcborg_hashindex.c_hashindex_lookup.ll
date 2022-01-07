; ModuleID = '/home/carl/AnghaBench/borg/scripts/fuzz-cache-sync/extr_....srcborg_hashindex.c_hashindex_lookup.c'
source_filename = "/home/carl/AnghaBench/borg/scripts/fuzz-cache-sync/extr_....srcborg_hashindex.c_hashindex_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32*)* @hashindex_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashindex_lookup(%struct.TYPE_9__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @hashindex_index(%struct.TYPE_9__* %11, i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %78, %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @BUCKET_IS_EMPTY(%struct.TYPE_9__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %79

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @BUCKET_IS_DELETED(%struct.TYPE_9__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %29, %26
  br label %59

32:                                               ; preds = %21
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @BUCKET_MATCHES_KEY(%struct.TYPE_9__* %33, i32 %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @BUCKET_ADDR(%struct.TYPE_9__* %42, i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @BUCKET_ADDR(%struct.TYPE_9__* %45, i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i32 %44, i32 %47, i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @BUCKET_MARK_DELETED(%struct.TYPE_9__* %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %41, %38
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %93

58:                                               ; preds = %32
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %67, %59
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %79

78:                                               ; preds = %73
  br label %15

79:                                               ; preds = %77, %20
  %80 = load i32*, i32** %7, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  br label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %79
  store i32 -1, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %56
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @hashindex_index(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @BUCKET_IS_EMPTY(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @BUCKET_IS_DELETED(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @BUCKET_MATCHES_KEY(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @BUCKET_ADDR(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @BUCKET_MARK_DELETED(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
