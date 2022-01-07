; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_reboot_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_reboot_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RB_PANIC = common dso_local global i32 0, align 4
@RB_QUICK = common dso_local global i32 0, align 4
@system_inshutdown = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@kIOSystemShutdownNotificationStageProcessExit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Quick reboot...\0A\00", align 1
@RB_NOSYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"syncing disks... \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"proc_shutdown\00", align 1
@kdebug_enable = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"/var/log/shutdown/shutdown.trace\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"shutdown.trace\00", align 1
@kIOSystemShutdownNotificationStageRootUnmount = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"vfs_unmountall\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"giving up\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"bufferclean\00", align 1
@RB_POWERDOWN = common dso_local global i32 0, align 4
@HOST_REBOOT_HALT = common dso_local global i32 0, align 4
@RB_HALT = common dso_local global i32 0, align 4
@RB_UPSDELAY = common dso_local global i32 0, align 4
@HOST_REBOOT_UPSDELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reboot_kernel(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @RB_PANIC, align 4
  %12 = load i32, i32* @RB_QUICK, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = load i32, i32* @RB_PANIC, align 4
  %16 = load i32, i32* @RB_QUICK, align 4
  %17 = or i32 %15, %16
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @panic_kernel(i32 %20, i8* %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = call i32 @OSCompareAndSwap(i32 0, i32 1, i32* @system_inshutdown)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @RB_QUICK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @RB_QUICK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %118

33:                                               ; preds = %26
  %34 = load i32, i32* @EBUSY, align 4
  store i32 %34, i32* %3, align 4
  br label %152

35:                                               ; preds = %23
  %36 = load i32, i32* @kIOSystemShutdownNotificationStageProcessExit, align 4
  %37 = call i32 @IOSystemShutdownNotification(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @RB_QUICK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @RB_QUICK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @RB_NOSYNC, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @sync(i32 0, i8* null, i32* null)
  br label %51

51:                                               ; preds = %49, %43
  br label %117

52:                                               ; preds = %35
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @RB_NOSYNC, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %116

57:                                               ; preds = %52
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i64 (...) @mach_absolute_time()
  store i64 %59, i64* %7, align 8
  %60 = call i32 (...) @proc_shutdown()
  %61 = call i64 (...) @mach_absolute_time()
  %62 = load i64, i64* %7, align 8
  %63 = sub nsw i64 %61, %62
  %64 = call i32 @halt_log_enter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 %63)
  %65 = call i32 (...) @unmountroot_pre_hook()
  %66 = call i64 (...) @mach_absolute_time()
  store i64 %66, i64* %7, align 8
  %67 = call i32 @sync(i32 0, i8* null, i32* null)
  %68 = load i64, i64* @kdebug_enable, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %57
  %71 = call i64 (...) @mach_absolute_time()
  store i64 %71, i64* %7, align 8
  %72 = call i32 @kdbg_dump_trace_to_file(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %73 = call i64 (...) @mach_absolute_time()
  %74 = load i64, i64* %7, align 8
  %75 = sub nsw i64 %73, %74
  %76 = call i32 @halt_log_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0, i64 %75)
  br label %77

77:                                               ; preds = %70, %57
  %78 = load i32, i32* @kIOSystemShutdownNotificationStageRootUnmount, align 4
  %79 = call i32 @IOSystemShutdownNotification(i32 %78)
  %80 = call i64 (...) @mach_absolute_time()
  store i64 %80, i64* %7, align 8
  %81 = call i32 (...) @vfs_unmountall()
  %82 = call i64 (...) @mach_absolute_time()
  %83 = load i64, i64* %7, align 8
  %84 = sub nsw i64 %82, %83
  %85 = call i32 @halt_log_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 0, i64 %84)
  %86 = call i64 (...) @mach_absolute_time()
  store i64 %86, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %101, %77
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 100
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = call i32 (...) @count_busy_buffers()
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %104

95:                                               ; preds = %90
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = mul nsw i32 1, %98
  %100 = call i32 @delay_for_interval(i32 %99, i32 1000000)
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %87

104:                                              ; preds = %94, %87
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %111

109:                                              ; preds = %104
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %107
  %112 = call i64 (...) @mach_absolute_time()
  %113 = load i64, i64* %7, align 8
  %114 = sub nsw i64 %112, %113
  %115 = call i32 @halt_log_enter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 0, i64 %114)
  br label %116

116:                                              ; preds = %111, %52
  br label %117

117:                                              ; preds = %116, %51
  br label %118

118:                                              ; preds = %117, %32
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @RB_PANIC, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* %4, align 4
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @panic_kernel(i32 %124, i8* %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @RB_POWERDOWN, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @HOST_REBOOT_HALT, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %127
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @RB_HALT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @HOST_REBOOT_HALT, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %139, %134
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @RB_UPSDELAY, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @HOST_REBOOT_UPSDELAY, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %146, %141
  %149 = call i32 (...) @host_priv_self()
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @host_reboot(i32 %149, i32 %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %148, %33
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @panic_kernel(i32, i8*) #1

declare dso_local i32 @OSCompareAndSwap(i32, i32, i32*) #1

declare dso_local i32 @IOSystemShutdownNotification(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sync(i32, i8*, i32*) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @proc_shutdown(...) #1

declare dso_local i32 @halt_log_enter(i8*, i32, i64) #1

declare dso_local i32 @unmountroot_pre_hook(...) #1

declare dso_local i32 @kdbg_dump_trace_to_file(i8*) #1

declare dso_local i32 @vfs_unmountall(...) #1

declare dso_local i32 @count_busy_buffers(...) #1

declare dso_local i32 @delay_for_interval(i32, i32) #1

declare dso_local i32 @host_reboot(i32, i32) #1

declare dso_local i32 @host_priv_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
