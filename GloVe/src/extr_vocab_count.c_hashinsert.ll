; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_vocab_count.c_hashinsert.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_vocab_count.c_hashinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, %struct.TYPE_3__* }

@TSIZE = common dso_local global i32 0, align 4
@SEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashinsert(%struct.TYPE_3__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @TSIZE, align 4
  %10 = load i32, i32* @SEED, align 4
  %11 = call i32 @HASHFN(i8* %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %6, align 8
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %12, i64 %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %5, align 8
  br label %17

17:                                               ; preds = %30, %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @scmp(i8* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %20, %17
  %28 = phi i1 [ false, %17 ], [ %26, %20 ]
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %6, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %5, align 8
  br label %17

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = icmp eq %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = call i64 @malloc(i32 24)
  %40 = inttoptr i64 %39 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %5, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = add nsw i32 %42, 1
  %44 = call i64 @malloc(i32 %43)
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcpy(i8* %50, i8* %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = icmp eq %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %38
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %61, i64 %63
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %64, align 8
  br label %69

65:                                               ; preds = %38
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %68, align 8
  br label %69

69:                                               ; preds = %65, %59
  br label %96

70:                                               ; preds = %35
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = icmp ne %struct.TYPE_3__* %75, null
  br i1 %76, label %77, label %95

77:                                               ; preds = %70
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store %struct.TYPE_3__* %80, %struct.TYPE_3__** %82, align 8
  %83 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %83, i64 %85
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  store %struct.TYPE_3__* %87, %struct.TYPE_3__** %89, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %91, i64 %93
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %94, align 8
  br label %95

95:                                               ; preds = %77, %70
  br label %96

96:                                               ; preds = %95, %69
  ret void
}

declare dso_local i32 @HASHFN(i8*, i32, i32) #1

declare dso_local i64 @scmp(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
