; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_can.c_CAN_Transmit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_can.c_CAN_Transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i64* }

@CAN_TSR_TME0 = common dso_local global i32 0, align 4
@CAN_TSR_TME1 = common dso_local global i32 0, align 4
@CAN_TSR_TME2 = common dso_local global i32 0, align 4
@CAN_TxStatus_NoMailBox = common dso_local global i64 0, align 8
@TMIDxR_TXRQ = common dso_local global i32 0, align 4
@CAN_Id_Standard = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CAN_Transmit(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = call i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_9__* %6)
  %8 = call i32 @assert_param(i32 %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @IS_CAN_IDTYPE(i32 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IS_CAN_RTR(i32 %16)
  %18 = call i32 @assert_param(i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @IS_CAN_DLC(i64 %21)
  %23 = call i32 @assert_param(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CAN_TSR_TME0, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @CAN_TSR_TME0, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %54

32:                                               ; preds = %2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CAN_TSR_TME1, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CAN_TSR_TME1, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i64 1, i64* %5, align 8
  br label %53

41:                                               ; preds = %32
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CAN_TSR_TME2, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @CAN_TSR_TME2, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i64 2, i64* %5, align 8
  br label %52

50:                                               ; preds = %41
  %51 = load i64, i64* @CAN_TxStatus_NoMailBox, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @CAN_TxStatus_NoMailBox, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %228

58:                                               ; preds = %54
  %59 = load i32, i32* @TMIDxR_TXRQ, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %59
  store i32 %67, i32* %65, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CAN_Id_Standard, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %58
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @IS_CAN_STDID(i32 %76)
  %78 = call i32 @assert_param(i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %81, 21
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %82, %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %86
  store i32 %94, i32* %92, align 4
  br label %121

95:                                               ; preds = %58
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @IS_CAN_EXTID(i32 %98)
  %100 = call i32 @assert_param(i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 3
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %104, %107
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %108, %111
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %112
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %95, %73
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = and i64 %124, 15
  store i64 %125, i64* %123, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i64, i64* %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, -16
  store i32 %133, i32* %131, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = or i64 %144, %136
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 5
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 3
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = shl i32 %152, 24
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 5
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 2
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = shl i32 %159, 16
  %161 = or i32 %153, %160
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 5
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 1
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = shl i32 %167, 8
  %169 = or i32 %161, %168
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 5
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = or i32 %169, %175
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = load i64, i64* %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  store i32 %176, i32* %182, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 7
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = shl i32 %188, 24
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 5
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 6
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = shl i32 %195, 16
  %197 = or i32 %189, %196
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 5
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 5
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = shl i32 %203, 8
  %205 = or i32 %197, %204
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 5
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 4
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = or i32 %205, %211
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = load i64, i64* %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 3
  store i32 %212, i32* %218, align 4
  %219 = load i32, i32* @TMIDxR_TXRQ, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = load i64, i64* %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %219
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %121, %54
  %229 = load i64, i64* %5, align 8
  ret i64 %229
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_9__*) #1

declare dso_local i32 @IS_CAN_IDTYPE(i32) #1

declare dso_local i32 @IS_CAN_RTR(i32) #1

declare dso_local i32 @IS_CAN_DLC(i64) #1

declare dso_local i32 @IS_CAN_STDID(i32) #1

declare dso_local i32 @IS_CAN_EXTID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
