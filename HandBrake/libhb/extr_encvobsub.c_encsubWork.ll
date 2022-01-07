; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encvobsub.c_encsubWork.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encvobsub.c_encsubWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@VOBSUB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"encvobsub: invalid subtitle source\00", align 1
@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_WORK_DONE = common dso_local global i32 0, align 4
@HB_WORK_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encsubWork(%struct.TYPE_12__* %0, %struct.TYPE_13__** %1, %struct.TYPE_13__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__**, align 8
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %6, align 8
  store %struct.TYPE_13__** %2, %struct.TYPE_13__*** %7, align 8
  %9 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %8, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VOBSUB, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = call i32 @hb_log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %21 = call i32 @hb_buffer_close(%struct.TYPE_13__** %20)
  %22 = call %struct.TYPE_13__* (...) @hb_buffer_eof_init()
  %23 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %23, align 8
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %34, align 8
  %35 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %35, align 8
  %36 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %24
  %38 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %39 = icmp ne %struct.TYPE_13__** %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %42, align 8
  %43 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %43, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %32
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_13__**) #1

declare dso_local %struct.TYPE_13__* @hb_buffer_eof_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
