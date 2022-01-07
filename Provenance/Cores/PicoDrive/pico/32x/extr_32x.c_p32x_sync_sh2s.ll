; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_p32x_sync_sh2s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_p32x_sync_sh2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sh2 sync to %u\00", align 1
@Pico32x = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@P32XS_nRES = common dso_local global i32 0, align 4
@ssh2 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@msh2 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@event_time_next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"sh2 exec to %u %d,%d/%d, flags %x\00", align 1
@SH2_IDLE_STATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sync_sh2s_normal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @EL_32X, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico32x, i32 0, i32 0), align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @P32XS_nRES, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 0), align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 0), align 4
  br label %184

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 0), align 4
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 0), align 4
  %22 = call i64 @CYCLES_GT(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 0), align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %152, %26
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @CYCLES_GT(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %158

33:                                               ; preds = %28
  %34 = load i32, i32* @event_time_next, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @event_time_next, align 4
  %39 = call i64 @CYCLES_GE(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @p32x_run_events(i32 %42)
  br label %44

44:                                               ; preds = %41, %36, %33
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @event_time_next, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @event_time_next, align 4
  %51 = call i64 @CYCLES_GT(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @event_time_next, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %48, %44
  br label %56

56:                                               ; preds = %151, %55
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @CYCLES_GT(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %152

61:                                               ; preds = %56
  %62 = load i32, i32* @EL_32X, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 0), align 4
  %66 = sub i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 0), align 4
  %69 = sub i32 %67, %68
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* %3, align 4
  %72 = sub i32 %70, %71
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico32x, i32 0, i32 1), align 8
  %74 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66, i32 %69, i32 %72, i32 %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 1), align 4
  %76 = load i32, i32* @SH2_IDLE_STATES, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %61
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 0), align 4
  %82 = sub i32 %80, %81
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @run_sh2(%struct.TYPE_5__* @ssh2, i32 %86)
  %88 = load i32, i32* @event_time_next, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @event_time_next, align 4
  %93 = call i64 @CYCLES_GT(i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @event_time_next, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %90, %85
  br label %98

98:                                               ; preds = %97, %79
  br label %99

99:                                               ; preds = %98, %61
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 1), align 4
  %101 = load i32, i32* @SH2_IDLE_STATES, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 0), align 4
  %107 = sub i32 %105, %106
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @run_sh2(%struct.TYPE_5__* @msh2, i32 %111)
  %113 = load i32, i32* @event_time_next, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @event_time_next, align 4
  %118 = call i64 @CYCLES_GT(i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @event_time_next, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %115, %110
  br label %123

123:                                              ; preds = %122, %104
  br label %124

124:                                              ; preds = %123, %99
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 1), align 4
  %127 = load i32, i32* @SH2_IDLE_STATES, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 0), align 4
  %133 = call i64 @CYCLES_GT(i32 %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 0), align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %130
  br label %138

138:                                              ; preds = %137, %124
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 1), align 4
  %140 = load i32, i32* @SH2_IDLE_STATES, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 0), align 4
  %146 = call i64 @CYCLES_GT(i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 0), align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %143
  br label %151

151:                                              ; preds = %150, %138
  br label %56

152:                                              ; preds = %56
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %5, align 4
  %155 = sub i32 %153, %154
  %156 = call i32 @p32x_timers_do(i32 %155)
  %157 = load i32, i32* %3, align 4
  store i32 %157, i32* %5, align 4
  br label %28

158:                                              ; preds = %28
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 1), align 4
  %160 = load i32, i32* @SH2_IDLE_STATES, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load i32, i32* %2, align 4
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 0), align 4
  %166 = call i64 @CYCLES_GT(i32 %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* %2, align 4
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 0), align 4
  br label %170

170:                                              ; preds = %168, %163
  br label %171

171:                                              ; preds = %170, %158
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 1), align 4
  %173 = load i32, i32* @SH2_IDLE_STATES, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load i32, i32* %2, align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 0), align 4
  %179 = call i64 @CYCLES_GT(i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i32, i32* %2, align 4
  store i32 %182, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 0), align 4
  br label %183

183:                                              ; preds = %181, %176
  br label %184

184:                                              ; preds = %16, %183, %171
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @CYCLES_GT(i32, i32) #1

declare dso_local i64 @CYCLES_GE(i32, i32) #1

declare dso_local i32 @p32x_run_events(i32) #1

declare dso_local i32 @run_sh2(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @p32x_timers_do(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
