; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_set_thread_state32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_set_thread_state32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DIRTY = common dso_local global i32 0, align 4
@USER_CS = common dso_local global i64 0, align 8
@USER_DS = common dso_local global i8* null, align 8
@USER_CTHREAD = common dso_local global i32 0, align 4
@NULL_SEG = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@EFL_USER_CLEAR = common dso_local global i32 0, align 4
@EFL_USER_SET = common dso_local global i32 0, align 4
@EFL_TF = common dso_local global i32 0, align 4
@SYSENTER_CS = common dso_local global i64 0, align 8
@SYSENTER_TF_CS = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_11__*)* @set_thread_state32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_thread_state32(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = load i32, i32* @DIRTY, align 4
  %9 = call i32 @pal_register_cache_state(%struct.TYPE_13__* %7, i32 %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = call %struct.TYPE_12__* @USER_REGS32(%struct.TYPE_13__* %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = load i64, i64* @USER_CS, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load i8*, i8** @USER_DS, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @USER_DS, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @USER_DS, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @USER_CTHREAD, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @NULL_SEG, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 6
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 5
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @valid_user_segment_selectors(i64 %39, i8* %42, i8* %45, i8* %48, i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %33
  %58 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %58, i32* %3, align 4
  br label %163

59:                                               ; preds = %33
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 15
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 15
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 14
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 14
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 13
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 13
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 12
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 11
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 11
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 10
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @EFL_USER_CLEAR, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = load i32, i32* @EFL_USER_SET, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 6
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 5
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 4
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @EFL_TF, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %59
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @SYSENTER_CS, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i64, i64* @SYSENTER_TF_CS, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %157, %151, %59
  %162 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %57
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @pal_register_cache_state(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_12__* @USER_REGS32(%struct.TYPE_13__*) #1

declare dso_local i32 @valid_user_segment_selectors(i64, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
