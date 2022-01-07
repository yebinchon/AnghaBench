; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/linux/vcfiled/extr_vcfiled.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/linux/vcfiled/extr_vcfiled.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@foreground = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to daemonize: errno = %d\00", align 1
@errno = common dso_local global i32 0, align 4
@log_stderr = common dso_local global i64 0, align 8
@lock_prefix_set = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@lock_prefix = common dso_local global i32 0, align 4
@VCFILED_LOCKFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"vcfiled started\00", align 1
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: failed to open vchiq instance\0A\00", align 1
@global_initialise_instance = common dso_local global i64 0, align 8
@global_connection = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** @progname, align 8
  %13 = load i8*, i8** @progname, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** @progname, align 8
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @parse_args(i32 %21, i8** %22)
  %24 = load i32, i32* @foreground, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = call i64 @daemon(i32 0, i32 1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %3, align 4
  br label %82

33:                                               ; preds = %26
  store i64 0, i64* @log_stderr, align 8
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i64, i64* @lock_prefix_set, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %39 = load i32, i32* @lock_prefix, align 4
  %40 = load i32, i32* @VCFILED_LOCKFILE, align 4
  %41 = call i32 (i8*, i32, i32, i8*, i32, ...) @vcos_safe_sprintf(i8* %38, i32 128, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  br label %46

42:                                               ; preds = %34
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %44 = load i32, i32* @VCFILED_LOCKFILE, align 4
  %45 = call i32 (i8*, i32, i32, i8*, i32, ...) @vcos_safe_sprintf(i8* %43, i32 128, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %48 = call i32 @vcfiled_lock(i8* %47, i32 (i32, i8*, i8*)* bitcast (i32 (i32, i8*, ...)* @logmsg to i32 (i32, i8*, i8*)*))
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %82

52:                                               ; preds = %46
  %53 = load i32, i32* @LOG_INFO, align 4
  %54 = call i32 (i32, i8*, ...) @logmsg(i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 (...) @vcos_init()
  %56 = call i64 @vchiq_initialise(i64* %6)
  %57 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* @LOG_ERR, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, ...) @logmsg(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  store i32 -1, i32* %3, align 4
  br label %82

65:                                               ; preds = %52
  %66 = call i32 @vchi_initialise(i64* @global_initialise_instance)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @vcos_assert(i32 %69)
  %71 = load i64, i64* @global_initialise_instance, align 8
  store i64 %71, i64* %6, align 8
  %72 = call i32 (...) @single_get_func_table()
  %73 = call i32 (...) @vchi_mphi_message_driver_func_table()
  %74 = call i32 @vchi_create_connection(i32 %72, i32 %73)
  store i32 %74, i32* @global_connection, align 4
  %75 = load i64, i64* @global_initialise_instance, align 8
  %76 = call i32 @vchi_connect(i32* @global_connection, i32 1, i64 %75)
  %77 = load i64, i64* @global_initialise_instance, align 8
  %78 = call i32 @vc_vchi_filesys_init(i64 %77, i32* @global_connection, i32 1)
  br label %79

79:                                               ; preds = %79, %65
  %80 = load i32, i32* @INT_MAX, align 4
  %81 = call i32 @sleep(i32 %80)
  br label %79

82:                                               ; preds = %59, %51, %29
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @vcos_safe_sprintf(i8*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @vcfiled_lock(i8*, i32 (i32, i8*, i8*)*) #1

declare dso_local i32 @logmsg(i32, i8*, ...) #1

declare dso_local i32 @vcos_init(...) #1

declare dso_local i64 @vchiq_initialise(i64*) #1

declare dso_local i32 @vchi_initialise(i64*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vchi_create_connection(i32, i32) #1

declare dso_local i32 @single_get_func_table(...) #1

declare dso_local i32 @vchi_mphi_message_driver_func_table(...) #1

declare dso_local i32 @vchi_connect(i32*, i32, i64) #1

declare dso_local i32 @vc_vchi_filesys_init(i64, i32*, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
