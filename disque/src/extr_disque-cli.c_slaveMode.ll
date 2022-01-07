; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_slaveMode.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_slaveMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@context = common dso_local global %struct.TYPE_3__* null, align 8
@config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"SYNC with master, discarding %llu bytes of bulk transfer...\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Error reading RDB payload while SYNCing\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"SYNC done. Logging commands from master.\0A\00", align 1
@OUTPUT_CSV = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @slaveMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slaveMode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @context, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @sendSync(i32 %9)
  store i64 %10, i64* %2, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @stderr, align 4
  %13 = load i64, i64* %2, align 8
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %15

15:                                               ; preds = %36, %0
  %16 = load i64, i64* %2, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load i32, i32* %1, align 4
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %21 = load i64, i64* %2, align 8
  %22 = icmp ugt i64 %21, 1024
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %26

24:                                               ; preds = %18
  %25 = load i64, i64* %2, align 8
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i64 [ 1024, %23 ], [ %25, %24 ]
  %28 = trunc i64 %27 to i32
  %29 = call i64 @read(i32 %19, i8* %20, i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %26
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %2, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %2, align 8
  br label %15

40:                                               ; preds = %15
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @OUTPUT_CSV, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 4
  br label %44

44:                                               ; preds = %48, %40
  %45 = call i64 @cliReadReply(i32 0)
  %46 = load i64, i64* @REDIS_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %44

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 4
  ret void
}

declare dso_local i64 @sendSync(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @read(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @cliReadReply(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
