; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_prof.c_addupc_task.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_prof.c_addupc_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.user_uprof, %struct.user_uprof }
%struct.user_uprof = type { i64, i64, i64, %struct.user_uprof* }
%struct.uprof = type { i64, i64, i64, %struct.uprof* }

@P_PROFIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addupc_task(%struct.proc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.user_uprof*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.uprof*, align 8
  %12 = alloca i16*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.proc*, %struct.proc** %4, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @P_PROFIL, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %3
  br label %156

23:                                               ; preds = %19
  %24 = load %struct.proc*, %struct.proc** %4, align 8
  %25 = call i64 @proc_is64bit(%struct.proc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %88

27:                                               ; preds = %23
  %28 = load %struct.proc*, %struct.proc** %4, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store %struct.user_uprof* %31, %struct.user_uprof** %9, align 8
  br label %32

32:                                               ; preds = %83, %27
  %33 = load %struct.user_uprof*, %struct.user_uprof** %9, align 8
  %34 = icmp ne %struct.user_uprof* %33, null
  br i1 %34, label %35, label %87

35:                                               ; preds = %32
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.user_uprof*, %struct.user_uprof** %9, align 8
  %38 = call i64 @PC_TO_INDEX(i64 %36, %struct.user_uprof* %37)
  store i64 %38, i64* %7, align 8
  %39 = load %struct.user_uprof*, %struct.user_uprof** %9, align 8
  %40 = getelementptr inbounds %struct.user_uprof, %struct.user_uprof* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.user_uprof*, %struct.user_uprof** %9, align 8
  %46 = getelementptr inbounds %struct.user_uprof, %struct.user_uprof* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %35
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.user_uprof*, %struct.user_uprof** %9, align 8
  %52 = getelementptr inbounds %struct.user_uprof, %struct.user_uprof* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.user_uprof*, %struct.user_uprof** %9, align 8
  %55 = getelementptr inbounds %struct.user_uprof, %struct.user_uprof* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = icmp slt i64 %50, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %49
  %60 = load i64, i64* %10, align 8
  %61 = ptrtoint i64* %8 to i32
  %62 = call i64 @copyin(i64 %60, i32 %61, i32 8)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = ptrtoint i64* %8 to i32
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @copyout(i32 %68, i64 %69, i32 8)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %156

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %59
  %75 = load %struct.proc*, %struct.proc** %4, align 8
  %76 = getelementptr inbounds %struct.proc, %struct.proc* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.user_uprof, %struct.user_uprof* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.proc*, %struct.proc** %4, align 8
  %81 = call i32 @stopprofclock(%struct.proc* %80)
  br label %87

82:                                               ; preds = %49, %35
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.user_uprof*, %struct.user_uprof** %9, align 8
  %85 = getelementptr inbounds %struct.user_uprof, %struct.user_uprof* %84, i32 0, i32 3
  %86 = load %struct.user_uprof*, %struct.user_uprof** %85, align 8
  store %struct.user_uprof* %86, %struct.user_uprof** %9, align 8
  br label %32

87:                                               ; preds = %74, %32
  br label %156

88:                                               ; preds = %23
  %89 = load %struct.proc*, %struct.proc** %4, align 8
  %90 = getelementptr inbounds %struct.proc, %struct.proc* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = bitcast %struct.user_uprof* %92 to %struct.uprof*
  store %struct.uprof* %93, %struct.uprof** %11, align 8
  br label %94

94:                                               ; preds = %151, %88
  %95 = load %struct.uprof*, %struct.uprof** %11, align 8
  %96 = icmp ne %struct.uprof* %95, null
  br i1 %96, label %97, label %155

97:                                               ; preds = %94
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.uprof*, %struct.uprof** %11, align 8
  %100 = bitcast %struct.uprof* %99 to %struct.user_uprof*
  %101 = call i64 @PC_TO_INDEX(i64 %98, %struct.user_uprof* %100)
  store i64 %101, i64* %7, align 8
  %102 = load %struct.uprof*, %struct.uprof** %11, align 8
  %103 = getelementptr inbounds %struct.uprof, %struct.uprof* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = add nsw i64 %104, %105
  %107 = inttoptr i64 %106 to i16*
  store i16* %107, i16** %12, align 8
  %108 = load i16*, i16** %12, align 8
  %109 = load %struct.uprof*, %struct.uprof** %11, align 8
  %110 = getelementptr inbounds %struct.uprof, %struct.uprof* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i16*
  %113 = icmp uge i16* %108, %112
  br i1 %113, label %114, label %150

114:                                              ; preds = %97
  %115 = load i16*, i16** %12, align 8
  %116 = load %struct.uprof*, %struct.uprof** %11, align 8
  %117 = getelementptr inbounds %struct.uprof, %struct.uprof* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.uprof*, %struct.uprof** %11, align 8
  %120 = getelementptr inbounds %struct.uprof, %struct.uprof* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = inttoptr i64 %122 to i16*
  %124 = icmp ult i16* %115, %123
  br i1 %124, label %125, label %150

125:                                              ; preds = %114
  %126 = load i16*, i16** %12, align 8
  %127 = call i64 @CAST_USER_ADDR_T(i16* %126)
  %128 = ptrtoint i64* %8 to i32
  %129 = call i64 @copyin(i64 %127, i32 %128, i32 8)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %125
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* %8, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %8, align 8
  %135 = ptrtoint i64* %8 to i32
  %136 = load i16*, i16** %12, align 8
  %137 = call i64 @CAST_USER_ADDR_T(i16* %136)
  %138 = call i64 @copyout(i32 %135, i64 %137, i32 8)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  br label %156

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %125
  %143 = load %struct.proc*, %struct.proc** %4, align 8
  %144 = getelementptr inbounds %struct.proc, %struct.proc* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.user_uprof, %struct.user_uprof* %146, i32 0, i32 2
  store i64 0, i64* %147, align 8
  %148 = load %struct.proc*, %struct.proc** %4, align 8
  %149 = call i32 @stopprofclock(%struct.proc* %148)
  br label %155

150:                                              ; preds = %114, %97
  br label %151

151:                                              ; preds = %150
  %152 = load %struct.uprof*, %struct.uprof** %11, align 8
  %153 = getelementptr inbounds %struct.uprof, %struct.uprof* %152, i32 0, i32 3
  %154 = load %struct.uprof*, %struct.uprof** %153, align 8
  store %struct.uprof* %154, %struct.uprof** %11, align 8
  br label %94

155:                                              ; preds = %142, %94
  br label %156

156:                                              ; preds = %22, %72, %140, %155, %87
  ret void
}

declare dso_local i64 @proc_is64bit(%struct.proc*) #1

declare dso_local i64 @PC_TO_INDEX(i64, %struct.user_uprof*) #1

declare dso_local i64 @copyin(i64, i32, i32) #1

declare dso_local i64 @copyout(i32, i64, i32) #1

declare dso_local i32 @stopprofclock(%struct.proc*) #1

declare dso_local i64 @CAST_USER_ADDR_T(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
