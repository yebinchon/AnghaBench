; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_postpipeevent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_postpipeevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.eventqelt* }
%struct.eventqelt = type { i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.eventqelt* }

@DBG_MISC_POST = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@EV_RE = common dso_local global i32 0, align 4
@EV_WR = common dso_local global i32 0, align 4
@PIPE_SIZE = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i64 0, align 8
@PIPE_EOF = common dso_local global i32 0, align 4
@EV_RESET = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @postpipeevent(%struct.pipe* %0, i32 %1) #0 {
  %3 = alloca %struct.pipe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.eventqelt*, align 8
  store %struct.pipe* %0, %struct.pipe** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pipe*, %struct.pipe** %3, align 8
  %8 = icmp eq %struct.pipe* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %173

10:                                               ; preds = %2
  %11 = load i32, i32* @DBG_MISC_POST, align 4
  %12 = load i32, i32* @DBG_FUNC_START, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @KERNEL_DEBUG(i32 %13, i32 %14, i32 0, i32 0, i32 1, i32 0)
  %16 = load %struct.pipe*, %struct.pipe** %3, align 8
  %17 = getelementptr inbounds %struct.pipe, %struct.pipe* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.eventqelt*, %struct.eventqelt** %18, align 8
  store %struct.eventqelt* %19, %struct.eventqelt** %6, align 8
  br label %20

20:                                               ; preds = %163, %10
  %21 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %22 = icmp ne %struct.eventqelt* %21, null
  br i1 %22, label %23, label %168

23:                                               ; preds = %20
  %24 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %25 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %163

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 131
  switch i32 %31, label %138 [
    i32 129, label %32
    i32 128, label %111
    i32 130, label %111
  ]

32:                                               ; preds = %29
  %33 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %34 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @EV_RE, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %32
  %41 = load %struct.pipe*, %struct.pipe** %3, align 8
  %42 = getelementptr inbounds %struct.pipe, %struct.pipe* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load i32, i32* @EV_RE, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.pipe*, %struct.pipe** %3, align 8
  %51 = getelementptr inbounds %struct.pipe, %struct.pipe* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %55 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %46, %40, %32
  %58 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %59 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @EV_WR, align 4
  %62 = sext i32 %61 to i64
  %63 = and i64 %60, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %110

65:                                               ; preds = %57
  %66 = load %struct.pipe*, %struct.pipe** %3, align 8
  %67 = getelementptr inbounds %struct.pipe, %struct.pipe* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PIPE_SIZE, align 4
  %71 = call i64 @MAX(i32 %69, i32 %70)
  %72 = load %struct.pipe*, %struct.pipe** %3, align 8
  %73 = getelementptr inbounds %struct.pipe, %struct.pipe* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %71, %75
  %77 = load i64, i64* @PIPE_BUF, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %65
  %80 = load %struct.pipe*, %struct.pipe** %3, align 8
  %81 = getelementptr inbounds %struct.pipe, %struct.pipe* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PIPE_EOF, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32, i32* @EV_WR, align 4
  %88 = load i32, i32* @EV_RESET, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %139

92:                                               ; preds = %79
  %93 = load i32, i32* @EV_WR, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load %struct.pipe*, %struct.pipe** %3, align 8
  %97 = getelementptr inbounds %struct.pipe, %struct.pipe* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PIPE_SIZE, align 4
  %101 = call i64 @MAX(i32 %99, i32 %100)
  %102 = load %struct.pipe*, %struct.pipe** %3, align 8
  %103 = getelementptr inbounds %struct.pipe, %struct.pipe* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %101, %105
  %107 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %108 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i64 %106, i64* %109, align 8
  br label %110

110:                                              ; preds = %92, %65, %57
  br label %139

111:                                              ; preds = %29, %29
  %112 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %113 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @EV_RE, align 4
  %116 = sext i32 %115 to i64
  %117 = and i64 %114, %116
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load i32, i32* @EV_RE, align 4
  %121 = or i32 %120, 130
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %119, %111
  %125 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %126 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @EV_WR, align 4
  %129 = sext i32 %128 to i64
  %130 = and i64 %127, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load i32, i32* @EV_WR, align 4
  %134 = or i32 %133, 128
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %132, %124
  br label %139

138:                                              ; preds = %29
  br label %173

139:                                              ; preds = %137, %110, %86
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %139
  %143 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %144 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %147 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %145
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* @DBG_MISC_POST, align 4
  %152 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %153 = ptrtoint %struct.eventqelt* %152 to i32
  %154 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %155 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @KERNEL_DEBUG(i32 %151, i32 %153, i32 %157, i32 %158, i32 1, i32 0)
  %160 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %161 = call i32 @evprocenque(%struct.eventqelt* %160)
  br label %162

162:                                              ; preds = %142, %139
  br label %163

163:                                              ; preds = %162, %28
  %164 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %165 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load %struct.eventqelt*, %struct.eventqelt** %166, align 8
  store %struct.eventqelt* %167, %struct.eventqelt** %6, align 8
  br label %20

168:                                              ; preds = %20
  %169 = load i32, i32* @DBG_MISC_POST, align 4
  %170 = load i32, i32* @DBG_FUNC_END, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @KERNEL_DEBUG(i32 %171, i32 0, i32 0, i32 0, i32 1, i32 0)
  br label %173

173:                                              ; preds = %168, %138, %9
  ret void
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @evprocenque(%struct.eventqelt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
