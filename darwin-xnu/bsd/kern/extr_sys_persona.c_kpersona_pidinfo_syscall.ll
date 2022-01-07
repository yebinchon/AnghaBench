; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_persona.c_kpersona_pidinfo_syscall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_persona.c_kpersona_pidinfo_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persona = type { i32, i32, i32 }
%struct.kpersona_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PERSONA_INFO_V1 = common dso_local global i32 0, align 4
@NGROUPS = common dso_local global i32 0, align 4
@MAXLOGNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @kpersona_pidinfo_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kpersona_pidinfo_syscall(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.persona*, align 8
  %9 = alloca %struct.kpersona_info, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @copyin(i32 %11, i64* %7, i32 8)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = call i32 (...) @kauth_cred_get()
  %19 = call i32 @kauth_cred_issuser(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.TYPE_2__* (...) @current_proc()
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EPERM, align 4
  store i32 %28, i32* %3, align 4
  br label %73

29:                                               ; preds = %21, %17
  %30 = load i64, i64* %7, align 8
  %31 = call %struct.persona* @persona_proc_get(i64 %30)
  store %struct.persona* %31, %struct.persona** %8, align 8
  %32 = load %struct.persona*, %struct.persona** %8, align 8
  %33 = icmp ne %struct.persona* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ESRCH, align 4
  store i32 %35, i32* %3, align 4
  br label %73

36:                                               ; preds = %29
  %37 = call i32 @memset(%struct.kpersona_info* %9, i32 0, i32 32)
  %38 = load i32, i32* @PERSONA_INFO_V1, align 4
  %39 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 7
  store i32 %38, i32* %39, align 4
  %40 = load %struct.persona*, %struct.persona** %8, align 8
  %41 = getelementptr inbounds %struct.persona, %struct.persona* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 6
  store i32 %42, i32* %43, align 4
  %44 = load %struct.persona*, %struct.persona** %8, align 8
  %45 = getelementptr inbounds %struct.persona, %struct.persona* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 5
  store i32 %46, i32* %47, align 4
  %48 = load %struct.persona*, %struct.persona** %8, align 8
  %49 = call i32 @persona_get_gid(%struct.persona* %48)
  %50 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 4
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %10, align 4
  %51 = load %struct.persona*, %struct.persona** %8, align 8
  %52 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NGROUPS, align 4
  %55 = call i32 @persona_get_groups(%struct.persona* %51, i32* %10, i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.persona*, %struct.persona** %8, align 8
  %59 = call i32 @persona_get_gmuid(%struct.persona* %58)
  %60 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.persona*, %struct.persona** %8, align 8
  %64 = getelementptr inbounds %struct.persona, %struct.persona* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MAXLOGNAME, align 4
  %67 = call i32 @strncpy(i32 %62, i32 %65, i32 %66)
  %68 = load %struct.persona*, %struct.persona** %8, align 8
  %69 = call i32 @persona_put(%struct.persona* %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @kpersona_copyout(%struct.kpersona_info* %9, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %36, %34, %27, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @copyin(i32, i64*, i32) #1

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local %struct.TYPE_2__* @current_proc(...) #1

declare dso_local %struct.persona* @persona_proc_get(i64) #1

declare dso_local i32 @memset(%struct.kpersona_info*, i32, i32) #1

declare dso_local i32 @persona_get_gid(%struct.persona*) #1

declare dso_local i32 @persona_get_groups(%struct.persona*, i32*, i32, i32) #1

declare dso_local i32 @persona_get_gmuid(%struct.persona*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @persona_put(%struct.persona*) #1

declare dso_local i32 @kpersona_copyout(%struct.kpersona_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
