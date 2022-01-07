; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_persona.c_kpersona_info_syscall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_persona.c_kpersona_info_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persona = type { i32, i32, i32 }
%struct.kpersona_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"FOUND: persona: id:%d, gid:%d, login:\22%s\22\00", align 1
@PERSONA_INFO_V1 = common dso_local global i32 0, align 4
@NGROUPS = common dso_local global i32 0, align 4
@MAXLOGNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @kpersona_info_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kpersona_info_syscall(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.persona*, align 8
  %9 = alloca %struct.kpersona_info, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @copyin(i32 %11, i32* %7, i32 4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.persona* @persona_lookup(i32 %18)
  store %struct.persona* %19, %struct.persona** %8, align 8
  %20 = load %struct.persona*, %struct.persona** %8, align 8
  %21 = icmp ne %struct.persona* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ESRCH, align 4
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %17
  %25 = load %struct.persona*, %struct.persona** %8, align 8
  %26 = getelementptr inbounds %struct.persona, %struct.persona* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.persona*, %struct.persona** %8, align 8
  %29 = call i32 @persona_get_gid(%struct.persona* %28)
  %30 = load %struct.persona*, %struct.persona** %8, align 8
  %31 = getelementptr inbounds %struct.persona, %struct.persona* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @persona_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29, i32 %32)
  %34 = call i32 @memset(%struct.kpersona_info* %9, i32 0, i32 32)
  %35 = load i32, i32* @PERSONA_INFO_V1, align 4
  %36 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 7
  store i32 %35, i32* %36, align 4
  %37 = load %struct.persona*, %struct.persona** %8, align 8
  %38 = getelementptr inbounds %struct.persona, %struct.persona* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 6
  store i32 %39, i32* %40, align 4
  %41 = load %struct.persona*, %struct.persona** %8, align 8
  %42 = getelementptr inbounds %struct.persona, %struct.persona* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 5
  store i32 %43, i32* %44, align 4
  %45 = load %struct.persona*, %struct.persona** %8, align 8
  %46 = call i32 @persona_get_gid(%struct.persona* %45)
  %47 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %10, align 4
  %48 = load %struct.persona*, %struct.persona** %8, align 8
  %49 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NGROUPS, align 4
  %52 = call i32 @persona_get_groups(%struct.persona* %48, i32* %10, i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.persona*, %struct.persona** %8, align 8
  %56 = call i32 @persona_get_gmuid(%struct.persona* %55)
  %57 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 2
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.kpersona_info, %struct.kpersona_info* %9, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.persona*, %struct.persona** %8, align 8
  %61 = getelementptr inbounds %struct.persona, %struct.persona* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MAXLOGNAME, align 4
  %64 = call i32 @strncpy(i32 %59, i32 %62, i32 %63)
  %65 = load %struct.persona*, %struct.persona** %8, align 8
  %66 = call i32 @persona_put(%struct.persona* %65)
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @kpersona_copyout(%struct.kpersona_info* %9, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %24, %22, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local %struct.persona* @persona_lookup(i32) #1

declare dso_local i32 @persona_dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @persona_get_gid(%struct.persona*) #1

declare dso_local i32 @memset(%struct.kpersona_info*, i32, i32) #1

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
