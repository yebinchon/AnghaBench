; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_profile.c_ProfileStart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_profile.c_ProfileStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@g_init = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"ERROR in ProfileStart: a tag may not be \22\22. Call is denied.\00", align 1
@.str.1 = private unnamed_addr constant [115 x i8] c"WARNING in ProfileStart: no more space to store the tag (\22%s\22). Increase NUM_TAGS in \22profile.h\22. Call is denied.\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"ERROR in ProfileStart: nesting of equal tags not allowed (\22%s\22). Call is denied.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProfileStart(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @g_init, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @Init()
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %49

16:                                               ; preds = %8
  %17 = load i8*, i8** %2, align 8
  %18 = call %struct.TYPE_4__* @LookupTag(i8* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %2, align 8
  %23 = call %struct.TYPE_4__* @AddTag(i8* %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %3, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @stdout, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %49

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i8*, i8** %2, align 8
  %33 = call i64 @Nested(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @stdout, align 4
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %49

39:                                               ; preds = %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = call i32 (...) @clock()
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %39, %35, %26, %13
  ret void
}

declare dso_local i32 @Init(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @LookupTag(i8*) #1

declare dso_local %struct.TYPE_4__* @AddTag(i8*) #1

declare dso_local i64 @Nested(i8*) #1

declare dso_local i32 @clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
