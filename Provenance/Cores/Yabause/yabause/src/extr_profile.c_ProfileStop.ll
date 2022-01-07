; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_profile.c_ProfileStop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_profile.c_ProfileStop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"ERROR in ProfileStop: a tag may not be \22\22. Call is denied.\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"WARNING in ProfileStop: tag \22%s\22 was never started. Call is denied.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProfileStop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %39

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call %struct.TYPE_3__* @LookupTag(i8* %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @stdout, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %39

21:                                               ; preds = %12
  %22 = call i64 (...) @clock()
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %23, %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %21, %17, %9
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_3__* @LookupTag(i8*) #1

declare dso_local i64 @clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
