; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_get_VPATH.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_get_VPATH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_VPATH.vpath = internal global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"VPATH\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_VPATH() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @get_VPATH.vpath, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %22

4:                                                ; preds = %0
  %5 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** @get_VPATH.vpath, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load i8*, i8** @get_VPATH.vpath, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 58
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i8*, i8** @get_VPATH.vpath, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = add nsw i64 %14, 2
  %16 = trunc i64 %15 to i32
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** %1, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i8*, i8** @get_VPATH.vpath, align 8
  %21 = call i8* @strcat(i32 %19, i8* %20)
  store i8* %21, i8** @get_VPATH.vpath, align 8
  br label %22

22:                                               ; preds = %12, %7, %4, %0
  %23 = load i8*, i8** @get_VPATH.vpath, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8*, i8** @get_VPATH.vpath, align 8
  br label %28

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i8* [ %26, %25 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %27 ]
  ret i8* %29
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strcat(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
