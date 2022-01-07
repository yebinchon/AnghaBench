; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_options.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i64, i64 }

@DOF_SECT_OPTDESC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"bad alignment in option description\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"zeroed option entry size\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"bad option entry size\00", align 1
@DOF_SECIDX_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"non-zero option string\00", align 1
@DTRACEOPT_UNSET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"unset option\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"rejected option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @dtrace_dof_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_dof_options(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %122, %2
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %125

18:                                               ; preds = %12
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = ptrtoint %struct.TYPE_8__* %19 to i64
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %20, %23
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %25, %28
  %30 = add i64 %24, %29
  %31 = inttoptr i64 %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %11, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DOF_SECT_OPTDESC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  br label %122

38:                                               ; preds = %18
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 8
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %3, align 4
  br label %126

48:                                               ; preds = %38
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %3, align 4
  br label %126

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 24
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %3, align 4
  br label %126

65:                                               ; preds = %57
  store i64 0, i64* %9, align 8
  br label %66

66:                                               ; preds = %116, %65
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %121

72:                                               ; preds = %66
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = ptrtoint %struct.TYPE_8__* %73 to i64
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %74, %77
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %78, %79
  %81 = inttoptr i64 %80 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %10, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DOF_SECIDX_NONE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %72
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %3, align 4
  br label %126

91:                                               ; preds = %72
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %3, align 4
  br label %126

101:                                              ; preds = %91
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @dtrace_state_option(i32* %102, i32 %105, i64 %108)
  store i32 %109, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %126

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %9, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %9, align 8
  br label %66

121:                                              ; preds = %66
  br label %122

122:                                              ; preds = %121, %37
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %6, align 8
  br label %12

125:                                              ; preds = %12
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %111, %97, %87, %61, %53, %44
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @dtrace_state_option(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
