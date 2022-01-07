; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_appimagetoolnoglib.c_sfs_mksquashfs.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_appimagetoolnoglib.c_sfs_mksquashfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"mksquashfs\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"-root-owned\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-noappend\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"execlp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfs_mksquashfs(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = call i32 (...) @getpid()
  store i32 %9, i32* %6, align 4
  %10 = call i32 (...) @fork()
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @waitpid(i32 %18, i32* %8, i32 0)
  br label %25

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @execlp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* null)
  %24 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %27

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %20, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
