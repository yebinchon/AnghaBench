; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_sds.c_sdsIncrLen.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_sds.c_sdsIncrLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@SDS_TYPE_MASK = common dso_local global i8 0, align 1
@SDS_TYPE_BITS = common dso_local global i8 0, align 1
@sh = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdsIncrLen(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 -1
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %5, align 1
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @SDS_TYPE_MASK, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  switch i32 %16, label %208 [
    i32 130, label %17
    i32 128, label %60
    i32 132, label %97
    i32 131, label %134
    i32 129, label %171
  ]

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %19, i8** %7, align 8
  %20 = load i8, i8* %5, align 1
  %21 = call zeroext i8 @SDS_TYPE_5_LEN(i8 zeroext %20)
  store i8 %21, i8* %8, align 1
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp slt i32 %28, 32
  br i1 %29, label %41, label %30

30:                                               ; preds = %24, %17
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp uge i32 %35, %37
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i1 [ false, %30 ], [ %38, %33 ]
  br label %41

41:                                               ; preds = %39, %24
  %42 = phi i1 [ true, %24 ], [ %40, %39 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i8, i8* @SDS_TYPE_BITS, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %48, %50
  %52 = or i32 130, %51
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %7, align 8
  store i8 %53, i8* %54, align 1
  %55 = load i8, i8* %8, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %6, align 8
  br label %209

60:                                               ; preds = %2
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @SDS_HDR_VAR(i32 8, i8* %61)
  %63 = load i32, i32* %4, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  %73 = load i32, i32* %4, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %87, label %75

75:                                               ; preds = %65, %60
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %4, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp uge i32 %81, %83
  br label %85

85:                                               ; preds = %78, %75
  %86 = phi i1 [ false, %75 ], [ %84, %78 ]
  br label %87

87:                                               ; preds = %85, %65
  %88 = phi i1 [ true, %65 ], [ %86, %85 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %6, align 8
  br label %209

97:                                               ; preds = %2
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 @SDS_HDR_VAR(i32 16, i8* %98)
  %100 = load i32, i32* %4, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %105, %108
  %110 = load i32, i32* %4, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %124, label %112

112:                                              ; preds = %102, %97
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %4, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp uge i32 %118, %120
  br label %122

122:                                              ; preds = %115, %112
  %123 = phi i1 [ false, %112 ], [ %121, %115 ]
  br label %124

124:                                              ; preds = %122, %102
  %125 = phi i1 [ true, %102 ], [ %123, %122 ]
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %6, align 8
  br label %209

134:                                              ; preds = %2
  %135 = load i8*, i8** %3, align 8
  %136 = call i32 @SDS_HDR_VAR(i32 32, i8* %135)
  %137 = load i32, i32* %4, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %142, %145
  %147 = load i32, i32* %4, align 4
  %148 = icmp uge i32 %146, %147
  br i1 %148, label %161, label %149

149:                                              ; preds = %139, %134
  %150 = load i32, i32* %4, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %4, align 4
  %157 = sub nsw i32 0, %156
  %158 = icmp uge i32 %155, %157
  br label %159

159:                                              ; preds = %152, %149
  %160 = phi i1 [ false, %149 ], [ %158, %152 ]
  br label %161

161:                                              ; preds = %159, %139
  %162 = phi i1 [ true, %139 ], [ %160, %159 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load i32, i32* %4, align 4
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %6, align 8
  br label %209

171:                                              ; preds = %2
  %172 = load i8*, i8** %3, align 8
  %173 = call i32 @SDS_HDR_VAR(i32 64, i8* %172)
  %174 = load i32, i32* %4, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %179, %182
  %184 = load i32, i32* %4, align 4
  %185 = icmp uge i32 %183, %184
  br i1 %185, label %198, label %186

186:                                              ; preds = %176, %171
  %187 = load i32, i32* %4, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %4, align 4
  %194 = sub nsw i32 0, %193
  %195 = icmp uge i32 %192, %194
  br label %196

196:                                              ; preds = %189, %186
  %197 = phi i1 [ false, %186 ], [ %195, %189 ]
  br label %198

198:                                              ; preds = %196, %176
  %199 = phi i1 [ true, %176 ], [ %197, %196 ]
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = load i32, i32* %4, align 4
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %6, align 8
  br label %209

208:                                              ; preds = %2
  store i64 0, i64* %6, align 8
  br label %209

209:                                              ; preds = %208, %198, %161, %124, %87, %41
  %210 = load i8*, i8** %3, align 8
  %211 = load i64, i64* %6, align 8
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8 0, i8* %212, align 1
  ret void
}

declare dso_local zeroext i8 @SDS_TYPE_5_LEN(i8 zeroext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SDS_HDR_VAR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
