; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_prot.c_h_conn.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_prot.c_h_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Argh! event fd doesn't match conn fd.\00", align 1
@STATE_CLOSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, %struct.TYPE_11__*)* @h_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h_conn(i32 %0, i16 signext %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %7, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = call i32 @twarnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @close(i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = call i32 @connclose(%struct.TYPE_11__* %17)
  %19 = call i32 (...) @epollq_apply()
  br label %65

20:                                               ; preds = %3
  %21 = load i16, i16* %5, align 2
  %22 = sext i16 %21 to i32
  %23 = icmp eq i32 %22, 104
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = call i32 @conn_process_io(%struct.TYPE_11__* %28)
  br label %30

30:                                               ; preds = %47, %27
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = call i64 @cmd_data_ready(%struct.TYPE_11__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @scan_line_end(i32 %37, i32 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = icmp ne i32 %41, 0
  br label %45

45:                                               ; preds = %34, %30
  %46 = phi i1 [ false, %30 ], [ %44, %34 ]
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = call i32 @dispatch_cmd(%struct.TYPE_11__* %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = call i32 @fill_extra_data(%struct.TYPE_11__* %50)
  br label %30

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @STATE_CLOSE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = call i32 @epollq_rmconn(%struct.TYPE_11__* %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = call i32 @connclose(%struct.TYPE_11__* %61)
  br label %63

63:                                               ; preds = %58, %52
  %64 = call i32 (...) @epollq_apply()
  br label %65

65:                                               ; preds = %63, %13
  ret void
}

declare dso_local i32 @twarnx(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @connclose(%struct.TYPE_11__*) #1

declare dso_local i32 @epollq_apply(...) #1

declare dso_local i32 @conn_process_io(%struct.TYPE_11__*) #1

declare dso_local i64 @cmd_data_ready(%struct.TYPE_11__*) #1

declare dso_local i32 @scan_line_end(i32, i32) #1

declare dso_local i32 @dispatch_cmd(%struct.TYPE_11__*) #1

declare dso_local i32 @fill_extra_data(%struct.TYPE_11__*) #1

declare dso_local i32 @epollq_rmconn(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
