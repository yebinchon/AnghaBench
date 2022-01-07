; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_setup_client_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_setup_client_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_args = type { i32, i32, i64, i32, i8*, i8* }

@msg_type = common dso_local global i32 0, align 4
@num_ints = common dso_local global i32 0, align 4
@MACH_PORT_RIGHT_RECEIVE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"mach_port_allocate(): \00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"Client sending %d %s IPC messages to port '%s' in %s mode.\0A\00", align 1
@num_msgs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"trivial\00", align 1
@server_port_name = common dso_local global i8** null, align 8
@oneway = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"oneway\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rpc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_client_ports(%struct.port_args* %0) #0 {
  %2 = alloca %struct.port_args*, align 8
  %3 = alloca i64, align 8
  store %struct.port_args* %0, %struct.port_args** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* @msg_type, align 4
  switch i32 %4, label %19 [
    i32 128, label %5
    i32 129, label %8
    i32 130, label %16
  ]

5:                                                ; preds = %1
  %6 = load %struct.port_args*, %struct.port_args** %2, align 8
  %7 = getelementptr inbounds %struct.port_args, %struct.port_args* %6, i32 0, i32 0
  store i32 4, i32* %7, align 8
  br label %19

8:                                                ; preds = %1
  %9 = load i32, i32* @num_ints, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = add i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = load %struct.port_args*, %struct.port_args** %2, align 8
  %15 = getelementptr inbounds %struct.port_args, %struct.port_args* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.port_args*, %struct.port_args** %2, align 8
  %18 = getelementptr inbounds %struct.port_args, %struct.port_args* %17, i32 0, i32 0
  store i32 4, i32* %18, align 8
  br label %19

19:                                               ; preds = %1, %16, %8, %5
  %20 = load %struct.port_args*, %struct.port_args** %2, align 8
  %21 = getelementptr inbounds %struct.port_args, %struct.port_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = sub i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  %26 = load %struct.port_args*, %struct.port_args** %2, align 8
  %27 = getelementptr inbounds %struct.port_args, %struct.port_args* %26, i32 0, i32 1
  store i32 4, i32* %27, align 4
  %28 = load %struct.port_args*, %struct.port_args** %2, align 8
  %29 = getelementptr inbounds %struct.port_args, %struct.port_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @malloc(i32 %30)
  %32 = load %struct.port_args*, %struct.port_args** %2, align 8
  %33 = getelementptr inbounds %struct.port_args, %struct.port_args* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load %struct.port_args*, %struct.port_args** %2, align 8
  %35 = getelementptr inbounds %struct.port_args, %struct.port_args* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @malloc(i32 %36)
  %38 = load %struct.port_args*, %struct.port_args** %2, align 8
  %39 = getelementptr inbounds %struct.port_args, %struct.port_args* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = call i32 (...) @mach_task_self()
  %41 = load i32, i32* @MACH_PORT_RIGHT_RECEIVE, align 4
  %42 = load %struct.port_args*, %struct.port_args** %2, align 8
  %43 = getelementptr inbounds %struct.port_args, %struct.port_args* %42, i32 0, i32 3
  %44 = call i64 @mach_port_allocate(i32 %40, i32 %41, i32* %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* @KERN_SUCCESS, align 8
  %46 = load i64, i64* %3, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %19
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @mach_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %19
  %53 = load i64, i64* @verbose, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load i32, i32* @num_msgs, align 4
  %57 = load i32, i32* @msg_type, align 4
  %58 = icmp eq i32 %57, 129
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @msg_type, align 4
  %62 = icmp eq i32 %61, 130
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %65

65:                                               ; preds = %60, %59
  %66 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %59 ], [ %64, %60 ]
  %67 = load i8**, i8*** @server_port_name, align 8
  %68 = load %struct.port_args*, %struct.port_args** %2, align 8
  %69 = getelementptr inbounds %struct.port_args, %struct.port_args* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* @oneway, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %77 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %56, i8* %66, i8* %72, i8* %76)
  br label %78

78:                                               ; preds = %65, %52
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @mach_port_allocate(i32, i32, i32*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @mach_error(i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
