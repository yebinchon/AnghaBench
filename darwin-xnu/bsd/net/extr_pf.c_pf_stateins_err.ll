; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_stateins_err.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_stateins_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pf_state = type { i32, %struct.pf_state_key* }
%struct.pf_state_key = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pfi_kif = type { i8* }

@pf_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PF_DEBUG_MISC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"pf: state insert failed: %s %s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ICMP4\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ICMP6\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PROTO=%u\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" lan: \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" gwy: \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" ext_lan: \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" ext_gwy: \00", align 1
@PFSTATE_FROMSYNC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c" (from sync)\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.pf_state*, %struct.pfi_kif*)* @pf_stateins_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_stateins_err(i8* %0, %struct.pf_state* %1, %struct.pfi_kif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pf_state*, align 8
  %6 = alloca %struct.pfi_kif*, align 8
  %7 = alloca %struct.pf_state_key*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pf_state* %1, %struct.pf_state** %5, align 8
  store %struct.pfi_kif* %2, %struct.pfi_kif** %6, align 8
  %8 = load %struct.pf_state*, %struct.pf_state** %5, align 8
  %9 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %8, i32 0, i32 1
  %10 = load %struct.pf_state_key*, %struct.pf_state_key** %9, align 8
  store %struct.pf_state_key* %10, %struct.pf_state_key** %7, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_status, i32 0, i32 0), align 8
  %12 = load i64, i64* @PF_DEBUG_MISC, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %99

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.pfi_kif*, %struct.pfi_kif** %6, align 8
  %17 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %18)
  %20 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %21 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %31 [
    i32 129, label %23
    i32 128, label %25
    i32 131, label %27
    i32 130, label %29
  ]

23:                                               ; preds = %14
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %36

25:                                               ; preds = %14
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %36

27:                                               ; preds = %14
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %36

29:                                               ; preds = %14
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %36

31:                                               ; preds = %14
  %32 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %33 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %29, %27, %25, %23
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %38 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %39 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %38, i32 0, i32 7
  %40 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %41 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %44 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %47 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pf_print_sk_host(i32* %39, i32 %42, i32 %45, i32 %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %51 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %52 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %51, i32 0, i32 6
  %53 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %54 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %57 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %60 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pf_print_sk_host(i32* %52, i32 %55, i32 %58, i32 %61)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %64 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %65 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %64, i32 0, i32 5
  %66 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %67 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %70 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %73 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pf_print_sk_host(i32* %65, i32 %68, i32 %71, i32 %74)
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %77 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %78 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %77, i32 0, i32 3
  %79 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %80 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %83 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  %86 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pf_print_sk_host(i32* %78, i32 %81, i32 %84, i32 %87)
  %89 = load %struct.pf_state*, %struct.pf_state** %5, align 8
  %90 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PFSTATE_FROMSYNC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %36
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %36
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %3
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pf_print_sk_host(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
