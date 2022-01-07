; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_argv.c___CheckARGV.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_argv.c___CheckARGV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i64, i32, i32*, i64 }

@__system_argv = common dso_local global %struct.TYPE_3__* null, align 8
@ARGV_MAGIC = common dso_local global i64 0, align 8
@__Arena1Lo = common dso_local global i64 0, align 8
@__argvArena1Lo = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__CheckARGV() #0 {
  %1 = alloca i32*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__system_argv, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @ARGV_MAGIC, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__system_argv, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__system_argv, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  store i32* null, i32** %11, align 8
  br label %37

12:                                               ; preds = %0
  %13 = load i64, i64* @__Arena1Lo, align 8
  %14 = trunc i64 %13 to i32
  %15 = add nsw i32 %14, 3
  %16 = and i32 %15, -4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %1, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__system_argv, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__system_argv, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @memmove(i32* %19, i8* %22, i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__system_argv, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__system_argv, align 8
  %32 = call i32 @build_argv(%struct.TYPE_3__* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__system_argv, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** @__argvArena1Lo, align 8
  br label %37

37:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @memmove(i32*, i8*, i32) #1

declare dso_local i32 @build_argv(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
