; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_remove_bg_dev_from_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_remove_bg_dev_from_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64*, i64*, i32 }

@FALSE = common dso_local global i64 0, align 8
@GATT_MAX_APPS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gatt_remove_bg_dev_from_list(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_7__* @gatt_find_bg_dev(i32 %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %9, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %12, align 8
  store i64 %21, i64* %4, align 8
  br label %189

22:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %163, %22
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @GATT_MAX_APPS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %35, %27
  %44 = phi i1 [ true, %27 ], [ %42, %35 ]
  br label %45

45:                                               ; preds = %43, %23
  %46 = phi i1 [ false, %23 ], [ %44, %43 ]
  br i1 %46, label %47, label %166

47:                                               ; preds = %45
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %104

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %103

59:                                               ; preds = %50
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %84, %59
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @GATT_MAX_APPS, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = sub i64 %81, 1
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  store i64 %77, i64* %83, align 8
  br label %84

84:                                               ; preds = %71
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %11, align 8
  br label %67

87:                                               ; preds = %67
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i64, i64* @FALSE, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @BTM_BleUpdateBgConnDev(i64 %95, i32 %98)
  store i64 %99, i64* %12, align 8
  br label %102

100:                                              ; preds = %87
  %101 = load i64, i64* @TRUE, align 8
  store i64 %101, i64* %12, align 8
  br label %102

102:                                              ; preds = %100, %94
  br label %166

103:                                              ; preds = %50
  br label %162

104:                                              ; preds = %47
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %161

113:                                              ; preds = %104
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %120, align 8
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %142, %113
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @GATT_MAX_APPS, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %145

129:                                              ; preds = %125
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* %11, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* %11, align 8
  %140 = sub i64 %139, 1
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  store i64 %135, i64* %141, align 8
  br label %142

142:                                              ; preds = %129
  %143 = load i64, i64* %11, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %11, align 8
  br label %125

145:                                              ; preds = %125
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load i64, i64* @FALSE, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @BTM_BleUpdateAdvWhitelist(i64 %153, i32 %156, i32 0, i32* null)
  store i64 %157, i64* %12, align 8
  br label %160

158:                                              ; preds = %145
  %159 = load i64, i64* @TRUE, align 8
  store i64 %159, i64* %12, align 8
  br label %160

160:                                              ; preds = %158, %152
  br label %166

161:                                              ; preds = %104
  br label %162

162:                                              ; preds = %161, %103
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %10, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %10, align 8
  br label %23

166:                                              ; preds = %160, %102, %45
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* @GATT_MAX_APPS, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %187

170:                                              ; preds = %166
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %170
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %186 = call i32 @memset(%struct.TYPE_7__* %185, i32 0, i32 24)
  br label %187

187:                                              ; preds = %184, %177, %170, %166
  %188 = load i64, i64* %12, align 8
  store i64 %188, i64* %4, align 8
  br label %189

189:                                              ; preds = %187, %20
  %190 = load i64, i64* %4, align 8
  ret i64 %190
}

declare dso_local %struct.TYPE_7__* @gatt_find_bg_dev(i32) #1

declare dso_local i64 @BTM_BleUpdateBgConnDev(i64, i32) #1

declare dso_local i64 @BTM_BleUpdateAdvWhitelist(i64, i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
