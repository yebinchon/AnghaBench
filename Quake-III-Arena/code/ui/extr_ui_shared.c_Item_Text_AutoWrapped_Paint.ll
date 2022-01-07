; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Text_AutoWrapped_Paint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Text_AutoWrapped_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i8*, i32, i32)*, i32 (i64, float, i32, i32, i8*, i32, i32, i32)*, i32 (i32*, i8*, i32)* }
%struct.TYPE_11__ = type { i8*, float, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_12__, i64, i32* }
%struct.TYPE_10__ = type { float, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@DC = common dso_local global %struct.TYPE_13__* null, align 8
@ITEM_ALIGN_LEFT = common dso_local global i64 0, align 8
@ITEM_ALIGN_RIGHT = common dso_local global i64 0, align 8
@ITEM_ALIGN_CENTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_Text_AutoWrapped_Paint(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 8
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %227

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %34 = call i32 %29(i32* %32, i8* %33, i32 1024)
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %26
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %227

47:                                               ; preds = %41
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = call i32 @Item_TextColor(%struct.TYPE_11__* %48, i32* %15)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @Item_SetTextExtents(%struct.TYPE_11__* %50, i32* %8, i32* %9, i8* %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load float, float* %54, align 8
  store float %55, float* %14, align 4
  store i32 0, i32* %10, align 4
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %56, align 16
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %57 = load i8*, i8** %5, align 8
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %216, %209, %47
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %227

61:                                               ; preds = %58
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 32
  br i1 %65, label %81, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76, %71, %66, %61
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %12, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %6, align 8
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %88, align 8
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %89(i8* %90, i32 %93, i32 0)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %86
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %98, %103
  br i1 %104, label %115, label %105

105:                                              ; preds = %97, %86
  %106 = load i8*, i8** %4, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i8*, i8** %4, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %216

115:                                              ; preds = %110, %105, %97
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %203

118:                                              ; preds = %115
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ITEM_ALIGN_LEFT, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  store i64 %127, i64* %130, align 8
  br label %166

131:                                              ; preds = %118
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @ITEM_ALIGN_RIGHT, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %131
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = sub nsw i64 %140, %142
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  store i64 %143, i64* %146, align 8
  br label %165

147:                                              ; preds = %131
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @ITEM_ALIGN_CENTER, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %147
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sdiv i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = sub nsw i64 %156, %159
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  store i64 %160, i64* %163, align 8
  br label %164

164:                                              ; preds = %153, %147
  br label %165

165:                                              ; preds = %164, %137
  br label %166

166:                                              ; preds = %165, %124
  %167 = load float, float* %14, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  store float %167, float* %170, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 6
  %179 = call i32 @ToWindowCoords(i64* %173, float* %176, %struct.TYPE_12__* %178)
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %181
  store i8 0, i8* %182, align 1
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32 (i64, float, i32, i32, i8*, i32, i32, i32)*, i32 (i64, float, i32, i32, i8*, i32, i32, i32)** %184, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 5
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load float, float* %192, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %15, align 4
  %198 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 %185(i64 %189, float %193, i32 %196, i32 %197, i8* %198, i32 0, i32 0, i32 %201)
  br label %203

203:                                              ; preds = %166, %115
  %204 = load i8*, i8** %4, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %227

209:                                              ; preds = %203
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 5
  %212 = sitofp i32 %211 to float
  %213 = load float, float* %14, align 4
  %214 = fadd float %213, %212
  store float %214, float* %14, align 4
  %215 = load i8*, i8** %6, align 8
  store i8* %215, i8** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %58

216:                                              ; preds = %110
  %217 = load i8*, i8** %4, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %4, align 8
  %219 = load i8, i8* %217, align 1
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %10, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %222
  store i8 %219, i8* %223, align 1
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %225
  store i8 0, i8* %226, align 1
  br label %58

227:                                              ; preds = %25, %46, %208, %58
  ret void
}

declare dso_local i32 @Item_TextColor(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @Item_SetTextExtents(%struct.TYPE_11__*, i32*, i32*, i8*) #1

declare dso_local i32 @ToWindowCoords(i64*, float*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
