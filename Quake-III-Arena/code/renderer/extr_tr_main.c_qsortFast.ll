; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_main.c_qsortFast.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_main.c_qsortFast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i8*)* }
%struct.TYPE_5__ = type { i64 }

@CUTOFF = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qsortFast(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [30 x i8*], align 16
  %14 = alloca [30 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %3
  br label %212

23:                                               ; preds = %19
  store i32 0, i32* %15, align 4
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub i32 %27, 1
  %29 = mul i32 %26, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %202, %189, %164, %23
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = sdiv i64 %37, %39
  %41 = add nsw i64 %40, 1
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @CUTOFF, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to %struct.TYPE_5__*
  %49 = load i8*, i8** %8, align 8
  %50 = bitcast i8* %49 to %struct.TYPE_5__*
  %51 = call i32 @shortsort(%struct.TYPE_5__* %48, %struct.TYPE_5__* %50)
  br label %197

52:                                               ; preds = %32
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = udiv i32 %54, 2
  %56 = load i32, i32* %6, align 4
  %57 = mul i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @SWAP_DRAW_SURF(i8* %60, i8* %61)
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8* %67, i8** %11, align 8
  br label %68

68:                                               ; preds = %118, %52
  br label %69

69:                                               ; preds = %88, %68
  %70 = load i32, i32* %6, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %10, align 8
  br label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = icmp ule i8* %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i8*, i8** %10, align 8
  %80 = bitcast i8* %79 to %struct.TYPE_5__*
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = bitcast i8* %83 to %struct.TYPE_5__*
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sle i64 %82, %86
  br label %88

88:                                               ; preds = %78, %74
  %89 = phi i1 [ false, %74 ], [ %87, %78 ]
  br i1 %89, label %69, label %90

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %111, %90
  %92 = load i32, i32* %6, align 4
  %93 = load i8*, i8** %11, align 8
  %94 = zext i32 %92 to i64
  %95 = sub i64 0, %94
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8* %96, i8** %11, align 8
  br label %97

97:                                               ; preds = %91
  %98 = load i8*, i8** %11, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = icmp ugt i8* %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load i8*, i8** %11, align 8
  %103 = bitcast i8* %102 to %struct.TYPE_5__*
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = bitcast i8* %106 to %struct.TYPE_5__*
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %105, %109
  br label %111

111:                                              ; preds = %101, %97
  %112 = phi i1 [ false, %97 ], [ %110, %101 ]
  br i1 %112, label %91, label %113

113:                                              ; preds = %111
  %114 = load i8*, i8** %11, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = icmp ult i8* %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %122

118:                                              ; preds = %113
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @SWAP_DRAW_SURF(i8* %119, i8* %120)
  br label %68

122:                                              ; preds = %117
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @SWAP_DRAW_SURF(i8* %123, i8* %124)
  %126 = load i8*, i8** %11, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 -1
  %128 = load i8*, i8** %7, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = icmp sge i64 %131, %136
  br i1 %137, label %138, label %167

138:                                              ; preds = %122
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* %6, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8*, i8** %11, align 8
  %144 = icmp ult i8* %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %138
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [30 x i8*], [30 x i8*]* %13, i64 0, i64 %148
  store i8* %146, i8** %149, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = load i32, i32* %6, align 4
  %152 = zext i32 %151 to i64
  %153 = sub i64 0, %152
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [30 x i8*], [30 x i8*]* %14, i64 0, i64 %156
  store i8* %154, i8** %157, align 8
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %145, %138
  %161 = load i8*, i8** %10, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = icmp ult i8* %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i8*, i8** %10, align 8
  store i8* %165, i8** %7, align 8
  br label %32

166:                                              ; preds = %160
  br label %196

167:                                              ; preds = %122
  %168 = load i8*, i8** %10, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = icmp ult i8* %168, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %167
  %172 = load i8*, i8** %10, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [30 x i8*], [30 x i8*]* %13, i64 0, i64 %174
  store i8* %172, i8** %175, align 8
  %176 = load i8*, i8** %8, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [30 x i8*], [30 x i8*]* %14, i64 0, i64 %178
  store i8* %176, i8** %179, align 8
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %15, align 4
  br label %182

182:                                              ; preds = %171, %167
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %6, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8*, i8** %11, align 8
  %188 = icmp ult i8* %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load i8*, i8** %11, align 8
  %191 = load i32, i32* %6, align 4
  %192 = zext i32 %191 to i64
  %193 = sub i64 0, %192
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  store i8* %194, i8** %8, align 8
  br label %32

195:                                              ; preds = %182
  br label %196

196:                                              ; preds = %195, %166
  br label %197

197:                                              ; preds = %196, %46
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %15, align 4
  %200 = load i32, i32* %15, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %197
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [30 x i8*], [30 x i8*]* %13, i64 0, i64 %204
  %206 = load i8*, i8** %205, align 8
  store i8* %206, i8** %7, align 8
  %207 = load i32, i32* %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [30 x i8*], [30 x i8*]* %14, i64 0, i64 %208
  %210 = load i8*, i8** %209, align 8
  store i8* %210, i8** %8, align 8
  br label %32

211:                                              ; preds = %197
  br label %212

212:                                              ; preds = %211, %22
  ret void
}

declare dso_local i32 @shortsort(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @SWAP_DRAW_SURF(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
