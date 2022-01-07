; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_cooccur.c_hashinsert.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_cooccur.c_hashinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, %struct.TYPE_3__* }

@TSIZE = common dso_local global i32 0, align 4
@SEED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error, duplicate entry located: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashinsert(%struct.TYPE_3__** %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @TSIZE, align 4
  %12 = load i32, i32* @SEED, align 4
  %13 = call i32 @HASHFN(i8* %10, i32 %11, i32 %12)
  store i32 %13, i32* %9, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %7, align 8
  br label %19

19:                                               ; preds = %32, %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @scmp(i8* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i1 [ false, %19 ], [ %28, %22 ]
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %8, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %7, align 8
  br label %19

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = icmp eq %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %73

40:                                               ; preds = %37
  %41 = call i64 @malloc(i32 24)
  %42 = inttoptr i64 %41 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %7, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %44, 1
  %46 = call i64 @malloc(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strcpy(i8* %52, i8* %53)
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = icmp eq %struct.TYPE_3__* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %40
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %64, i64 %66
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %67, align 8
  br label %72

68:                                               ; preds = %40
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %71, align 8
  br label %72

72:                                               ; preds = %68, %62
  br label %79

73:                                               ; preds = %37
  %74 = load i32, i32* @stderr, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %72
  ret void
}

declare dso_local i32 @HASHFN(i8*, i32, i32) #1

declare dso_local i64 @scmp(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
