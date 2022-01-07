; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_setup_server_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_setup_server_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_args = type { i32, i32, i64, i32, i32, i8*, i8* }

@num_ints = common dso_local global i32 0, align 4
@MACH_PORT_RIGHT_RECEIVE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"mach_port_allocate(): \00", align 1
@MACH_PORT_RIGHT_PORT_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mach_port_insert_member(): \00", align 1
@MACH_MSG_TYPE_MAKE_SEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"mach_port_insert_right(): \00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"task_get_bootstrap_port(): \00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"server waiting for IPC messages from client on port '%s'.\0A\00", align 1
@server_port_name = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"bootstrap_register(): \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_server_ports(%struct.port_args* %0) #0 {
  %2 = alloca %struct.port_args*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.port_args* %0, %struct.port_args** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load i32, i32* @num_ints, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 4, %6
  %8 = add i64 4, %7
  %9 = trunc i64 %8 to i32
  %10 = call i32 @MAX(i32 %9, i32 4)
  %11 = load %struct.port_args*, %struct.port_args** %2, align 8
  %12 = getelementptr inbounds %struct.port_args, %struct.port_args* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.port_args*, %struct.port_args** %2, align 8
  %14 = getelementptr inbounds %struct.port_args, %struct.port_args* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.port_args*, %struct.port_args** %2, align 8
  %16 = getelementptr inbounds %struct.port_args, %struct.port_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @malloc(i32 %17)
  %19 = load %struct.port_args*, %struct.port_args** %2, align 8
  %20 = getelementptr inbounds %struct.port_args, %struct.port_args* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.port_args*, %struct.port_args** %2, align 8
  %22 = getelementptr inbounds %struct.port_args, %struct.port_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @malloc(i32 %23)
  %25 = load %struct.port_args*, %struct.port_args** %2, align 8
  %26 = getelementptr inbounds %struct.port_args, %struct.port_args* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = call i32 (...) @mach_task_self()
  %28 = load i32, i32* @MACH_PORT_RIGHT_RECEIVE, align 4
  %29 = load %struct.port_args*, %struct.port_args** %2, align 8
  %30 = getelementptr inbounds %struct.port_args, %struct.port_args* %29, i32 0, i32 3
  %31 = call i64 @mach_port_allocate(i32 %27, i32 %28, i32* %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* @KERN_SUCCESS, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @mach_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %1
  %40 = call i32 (...) @mach_task_self()
  %41 = load i32, i32* @MACH_PORT_RIGHT_PORT_SET, align 4
  %42 = load %struct.port_args*, %struct.port_args** %2, align 8
  %43 = getelementptr inbounds %struct.port_args, %struct.port_args* %42, i32 0, i32 4
  %44 = call i64 @mach_port_allocate(i32 %40, i32 %41, i32* %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* @KERN_SUCCESS, align 8
  %46 = load i64, i64* %3, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @mach_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %39
  %53 = call i32 (...) @mach_task_self()
  %54 = load %struct.port_args*, %struct.port_args** %2, align 8
  %55 = getelementptr inbounds %struct.port_args, %struct.port_args* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.port_args*, %struct.port_args** %2, align 8
  %58 = getelementptr inbounds %struct.port_args, %struct.port_args* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @mach_port_insert_member(i32 %53, i32 %56, i32 %59)
  store i64 %60, i64* %3, align 8
  %61 = load i64, i64* @KERN_SUCCESS, align 8
  %62 = load i64, i64* %3, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @mach_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %52
  %69 = call i32 (...) @mach_task_self()
  %70 = load %struct.port_args*, %struct.port_args** %2, align 8
  %71 = getelementptr inbounds %struct.port_args, %struct.port_args* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.port_args*, %struct.port_args** %2, align 8
  %74 = getelementptr inbounds %struct.port_args, %struct.port_args* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MACH_MSG_TYPE_MAKE_SEND, align 4
  %77 = call i64 @mach_port_insert_right(i32 %69, i32 %72, i32 %75, i32 %76)
  store i64 %77, i64* %3, align 8
  %78 = load i64, i64* @KERN_SUCCESS, align 8
  %79 = load i64, i64* %3, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @mach_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %68
  %86 = call i32 (...) @mach_task_self()
  %87 = call i64 @task_get_bootstrap_port(i32 %86, i32* %4)
  store i64 %87, i64* %3, align 8
  %88 = load i64, i64* @KERN_SUCCESS, align 8
  %89 = load i64, i64* %3, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i64, i64* %3, align 8
  %93 = call i32 @mach_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  %94 = call i32 @exit(i32 1) #3
  unreachable

95:                                               ; preds = %85
  %96 = load i64, i64* @verbose, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i8**, i8*** @server_port_name, align 8
  %100 = load %struct.port_args*, %struct.port_args** %2, align 8
  %101 = getelementptr inbounds %struct.port_args, %struct.port_args* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %98, %95
  %107 = load i32, i32* %4, align 4
  %108 = load i8**, i8*** @server_port_name, align 8
  %109 = load %struct.port_args*, %struct.port_args** %2, align 8
  %110 = getelementptr inbounds %struct.port_args, %struct.port_args* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i8*, i8** %108, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.port_args*, %struct.port_args** %2, align 8
  %115 = getelementptr inbounds %struct.port_args, %struct.port_args* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @bootstrap_register(i32 %107, i8* %113, i32 %116)
  store i64 %117, i64* %3, align 8
  %118 = load i64, i64* @KERN_SUCCESS, align 8
  %119 = load i64, i64* %3, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %106
  %122 = load i64, i64* %3, align 8
  %123 = call i32 @mach_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %122)
  %124 = call i32 @exit(i32 1) #3
  unreachable

125:                                              ; preds = %106
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @mach_port_allocate(i32, i32, i32*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @mach_error(i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @mach_port_insert_member(i32, i32, i32) #1

declare dso_local i64 @mach_port_insert_right(i32, i32, i32, i32) #1

declare dso_local i64 @task_get_bootstrap_port(i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @bootstrap_register(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
