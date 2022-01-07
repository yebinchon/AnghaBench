; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_ListBox_MouseEnter.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_ListBox_MouseEnter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { float, float, i8*, i8* }
%struct.TYPE_11__ = type { float, float, i8*, i8* }
%struct.TYPE_12__ = type { i64, i8*, i64, float, i64, i64, float }

@WINDOW_LB_LEFTARROW = common dso_local global i32 0, align 4
@WINDOW_LB_RIGHTARROW = common dso_local global i32 0, align 4
@WINDOW_LB_THUMB = common dso_local global i32 0, align 4
@WINDOW_LB_PGUP = common dso_local global i32 0, align 4
@WINDOW_LB_PGDN = common dso_local global i32 0, align 4
@WINDOW_HORIZONTAL = common dso_local global i32 0, align 4
@LISTBOX_IMAGE = common dso_local global i64 0, align 8
@SCROLLBAR_SIZE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_ListBox_MouseEnter(%struct.TYPE_13__* %0, float %1, float %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %8, align 8
  %13 = load i32, i32* @WINDOW_LB_LEFTARROW, align 4
  %14 = load i32, i32* @WINDOW_LB_RIGHTARROW, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WINDOW_LB_THUMB, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WINDOW_LB_PGUP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @WINDOW_LB_PGDN, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %22
  store i32 %27, i32* %25, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = load float, float* %5, align 4
  %30 = load float, float* %6, align 4
  %31 = call i32 @Item_ListBox_OverLB(%struct.TYPE_13__* %28, float %29, float %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WINDOW_HORIZONTAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %142

44:                                               ; preds = %3
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @WINDOW_LB_LEFTARROW, align 4
  %50 = load i32, i32* @WINDOW_LB_RIGHTARROW, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @WINDOW_LB_THUMB, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @WINDOW_LB_PGUP, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @WINDOW_LB_PGDN, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %48, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %141, label %60

60:                                               ; preds = %44
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LISTBOX_IMAGE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %139

66:                                               ; preds = %60
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load float, float* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store float %71, float* %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load float, float* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store float %77, float* %78, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** @SCROLLBAR_SIZE, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = inttoptr i64 %87 to i8*
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i8* %88, i8** %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = ptrtoint i8* %94 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = inttoptr i64 %100 to i8*
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i8* %101, i8** %102, align 8
  %103 = load float, float* %5, align 4
  %104 = load float, float* %6, align 4
  %105 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %7, float %103, float %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %138

107:                                              ; preds = %66
  %108 = load float, float* %5, align 4
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %110 = load float, float* %109, align 8
  %111 = fsub float %108, %110
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load float, float* %113, align 8
  %115 = fdiv float %111, %114
  %116 = fptosi float %115 to i32
  %117 = sext i32 %116 to i64
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %126, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %107
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %131, %107
  br label %138

138:                                              ; preds = %137, %66
  br label %140

139:                                              ; preds = %60
  br label %140

140:                                              ; preds = %139, %138
  br label %141

141:                                              ; preds = %140, %44
  br label %233

142:                                              ; preds = %3
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @WINDOW_LB_LEFTARROW, align 4
  %148 = load i32, i32* @WINDOW_LB_RIGHTARROW, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @WINDOW_LB_THUMB, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @WINDOW_LB_PGUP, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @WINDOW_LB_PGDN, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %146, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %232, label %158

158:                                              ; preds = %142
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load float, float* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store float %163, float* %164, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load float, float* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store float %169, float* %170, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 3
  %175 = load i8*, i8** %174, align 8
  %176 = load i8*, i8** @SCROLLBAR_SIZE, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = inttoptr i64 %179 to i8*
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i8* %180, i8** %181, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = ptrtoint i8* %186 to i64
  %191 = ptrtoint i8* %189 to i64
  %192 = sub i64 %190, %191
  %193 = inttoptr i64 %192 to i8*
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i8* %193, i8** %194, align 8
  %195 = load float, float* %5, align 4
  %196 = load float, float* %6, align 4
  %197 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %7, float %195, float %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %231

199:                                              ; preds = %158
  %200 = load float, float* %6, align 4
  %201 = fsub float %200, 2.000000e+00
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %203 = load float, float* %202, align 4
  %204 = fsub float %201, %203
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 6
  %207 = load float, float* %206, align 8
  %208 = fdiv float %204, %207
  %209 = fptosi float %208 to i32
  %210 = sext i32 %209 to i64
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %210, %213
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 2
  store i64 %214, i64* %216, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = icmp sgt i64 %219, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %199
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %224, %199
  br label %231

231:                                              ; preds = %230, %158
  br label %232

232:                                              ; preds = %231, %142
  br label %233

233:                                              ; preds = %232, %141
  ret void
}

declare dso_local i32 @Item_ListBox_OverLB(%struct.TYPE_13__*, float, float) #1

declare dso_local i64 @Rect_ContainsPoint(%struct.TYPE_11__*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
