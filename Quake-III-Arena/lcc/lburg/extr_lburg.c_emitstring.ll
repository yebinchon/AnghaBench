; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_emitstring.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_emitstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [32 x i8] c"static char *%Ptemplates[] = {\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/* 0 */%10,\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"/* %d */%1\22%s\22,%1/* %R */\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\0Astatic char %Pisinstruction[] = {\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"/* %d */%1%d,%1/* %s */\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"\0Astatic char *%Pstring[] = {\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"/* %d */%1\22%R\22,\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @emitstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emitstring(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  br label %8

8:                                                ; preds = %20, %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %14, i8* %17, %struct.TYPE_3__* %18)
  br label %20

20:                                               ; preds = %11
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %3, align 8
  br label %8

24:                                               ; preds = %8
  %25 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %3, align 8
  br label %29

29:                                               ; preds = %71, %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %75

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strlen(i8* %35)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %64

42:                                               ; preds = %32
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 92
  br i1 %52, label %53, label %64

53:                                               ; preds = %42
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 110
  br label %64

64:                                               ; preds = %53, %42, %32
  %65 = phi i1 [ false, %42 ], [ false, %32 ], [ %63, %53 ]
  %66 = zext i1 %65 to i32
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %39, i32 %66, i8* %69)
  br label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  store %struct.TYPE_3__* %74, %struct.TYPE_3__** %3, align 8
  br label %29

75:                                               ; preds = %29
  %76 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %78 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  store %struct.TYPE_3__* %79, %struct.TYPE_3__** %3, align 8
  br label %80

80:                                               ; preds = %89, %75
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = icmp ne %struct.TYPE_3__* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %86, %struct.TYPE_3__* %87)
  br label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  store %struct.TYPE_3__* %92, %struct.TYPE_3__** %3, align 8
  br label %80

93:                                               ; preds = %80
  %94 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
