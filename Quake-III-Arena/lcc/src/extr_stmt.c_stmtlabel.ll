; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stmt.c_stmtlabel.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stmt.c_stmtlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@token = common dso_local global i32 0, align 4
@stmtlabs = common dso_local global i32 0, align 4
@FUNC = common dso_local global i32 0, align 4
@LABELS = common dso_local global i32 0, align 4
@src = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [53 x i8] c"redefinition of label `%s' previously defined at %w\0A\00", align 1
@t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stmtlabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmtlabel() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = load i32, i32* @token, align 4
  %3 = load i32, i32* @stmtlabs, align 4
  %4 = call %struct.TYPE_8__* @lookup(i32 %2, i32 %3)
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %1, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %6 = icmp eq %struct.TYPE_8__* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %0
  %8 = load i32, i32* @token, align 4
  %9 = load i32, i32* @FUNC, align 4
  %10 = call %struct.TYPE_8__* @install(i32 %8, i32* @stmtlabs, i32 0, i32 %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %1, align 8
  %11 = load i32, i32* @LABELS, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = call i32 @genlabel(i32 1)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load i8, i8* @src, align 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i8 %19, i8* %21, align 4
  br label %22

22:                                               ; preds = %7, %0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %32)
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @definelab(i32 %41)
  %43 = call i32 (...) @gettok()
  store i32 %43, i32* @t, align 4
  %44 = call i32 @expect(i8 signext 58)
  ret void
}

declare dso_local %struct.TYPE_8__* @lookup(i32, i32) #1

declare dso_local %struct.TYPE_8__* @install(i32, i32*, i32, i32) #1

declare dso_local i32 @genlabel(i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @definelab(i32) #1

declare dso_local i32 @gettok(...) #1

declare dso_local i32 @expect(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
