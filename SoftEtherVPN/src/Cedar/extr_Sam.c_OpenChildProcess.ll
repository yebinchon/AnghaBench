; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_OpenChildProcess.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_OpenChildProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpenChildProcess(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x [2 x i32]], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i8**, i8*** %6, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %3
  store i32 -1, i32* %4, align 4
  br label %133

20:                                               ; preds = %16
  %21 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %23 = call i64 @pipe(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %133

26:                                               ; preds = %20
  %27 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 1
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  %29 = call i64 @pipe(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = call i32 @close(i32 %34)
  %36 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @close(i32 %38)
  store i32 -1, i32* %4, align 4
  br label %133

40:                                               ; preds = %26
  %41 = call i32 (...) @fork()
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %93

44:                                               ; preds = %40
  %45 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %45, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @close(i32 %47)
  %49 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 1
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %49, i64 0, i64 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @close(i32 %51)
  %53 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = load i32, i32* @stdin, align 4
  %57 = call i32 @fileno(i32 %56)
  %58 = call i64 @dup2(i32 %55, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %44
  %61 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 1
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %61, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @stdout, align 4
  %65 = call i32 @fileno(i32 %64)
  %66 = call i64 @dup2(i32 %63, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %60, %44
  %69 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %69, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = call i32 @close(i32 %71)
  %73 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 1
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %73, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load i32, i32* @EXIT_FAILURE, align 4
  %78 = call i32 @_exit(i32 %77) #3
  unreachable

79:                                               ; preds = %60
  %80 = load i8*, i8** %5, align 8
  %81 = load i8**, i8*** %6, align 8
  %82 = call i32 @execvp(i8* %80, i8** %81)
  store i32 %82, i32* %10, align 4
  %83 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 0
  %85 = load i32, i32* %84, align 16
  %86 = call i32 @close(i32 %85)
  %87 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 1
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %87, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @close(i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @_exit(i32 %91) #3
  unreachable

93:                                               ; preds = %40
  %94 = load i32, i32* %9, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %97, i64 0, i64 0
  %99 = load i32, i32* %98, align 16
  %100 = call i32 @close(i32 %99)
  %101 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 1
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %101, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @close(i32 %103)
  %105 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 1
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %105, i64 0, i64 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %107, i32* %109, align 4
  %110 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %110, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %4, align 4
  br label %133

116:                                              ; preds = %93
  %117 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 0, i64 0
  %119 = load i32, i32* %118, align 16
  %120 = call i32 @close(i32 %119)
  %121 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 1
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %121, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @close(i32 %123)
  %125 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %125, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @close(i32 %127)
  %129 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 1
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %129, i64 0, i64 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @close(i32 %131)
  store i32 -1, i32* %4, align 4
  br label %133

133:                                              ; preds = %116, %96, %31, %25, %19
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i64 @dup2(i32, i32) #1

declare dso_local i32 @fileno(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @execvp(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
