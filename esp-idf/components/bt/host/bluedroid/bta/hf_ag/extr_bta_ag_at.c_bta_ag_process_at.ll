; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_at.c_bta_ag_process_at.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_at.c_bta_ag_process_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32 (i32, i32, i8*)*, i32 (i32, i64, i32, i8*, i64)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64*, i32, i64, i64, i64 }

@BTA_AG_AT_NONE = common dso_local global i32 0, align 4
@BTA_AG_AT_READ = common dso_local global i32 0, align 4
@BTA_AG_AT_TEST = common dso_local global i32 0, align 4
@BTA_AG_AT_SET = common dso_local global i32 0, align 4
@BTA_AG_AT_FREE = common dso_local global i32 0, align 4
@BTA_AG_AT_INT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_process_at(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %7
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @utl_strucmp(i64* %25, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %36

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %3, align 8
  br label %7

36:                                               ; preds = %31, %7
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %209

47:                                               ; preds = %36
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = call i32 @strlen(i64* %57)
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %50, i64 %59
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %47
  %67 = load i32, i32* @BTA_AG_AT_NONE, align 4
  store i32 %67, i32* %4, align 4
  br label %117

68:                                               ; preds = %47
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 63
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @BTA_AG_AT_READ, align 4
  store i32 %81, i32* %4, align 4
  br label %116

82:                                               ; preds = %74, %68
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 61
  br i1 %87, label %88, label %113

88:                                               ; preds = %82
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %88
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 63
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @BTA_AG_AT_TEST, align 4
  store i32 %107, i32* %4, align 4
  br label %112

108:                                              ; preds = %100, %94
  %109 = load i32, i32* @BTA_AG_AT_SET, align 4
  store i32 %109, i32* %4, align 4
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %5, align 8
  br label %112

112:                                              ; preds = %108, %106
  br label %115

113:                                              ; preds = %88, %82
  %114 = load i32, i32* @BTA_AG_AT_FREE, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %112
  br label %116

116:                                              ; preds = %115, %80
  br label %117

117:                                              ; preds = %116, %66
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i64, i64* %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %118, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %199

128:                                              ; preds = %117
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @BTA_AG_AT_SET, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %186

132:                                              ; preds = %128
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i64, i64* %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @BTA_AG_AT_INT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %186

142:                                              ; preds = %132
  %143 = load i8*, i8** %5, align 8
  %144 = call i64 @utl_str2int(i8* %143)
  store i64 %144, i64* %6, align 8
  %145 = load i64, i64* %6, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i64, i64* %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %145, %152
  br i1 %153, label %164, label %154

154:                                              ; preds = %142
  %155 = load i64, i64* %6, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i64, i64* %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp sgt i64 %155, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %154, %142
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %166, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @FALSE, align 4
  %172 = call i32 %167(i32 %170, i32 %171, i8* null)
  br label %185

173:                                              ; preds = %154
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 3
  %176 = load i32 (i32, i64, i32, i8*, i64)*, i32 (i32, i64, i32, i8*, i64)** %175, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i64, i64* %3, align 8
  %181 = load i32, i32* %4, align 4
  %182 = load i8*, i8** %5, align 8
  %183 = load i64, i64* %6, align 8
  %184 = call i32 %176(i32 %179, i64 %180, i32 %181, i8* %182, i64 %183)
  br label %185

185:                                              ; preds = %173, %164
  br label %198

186:                                              ; preds = %132, %128
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load i32 (i32, i64, i32, i8*, i64)*, i32 (i32, i64, i32, i8*, i64)** %188, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i64, i64* %3, align 8
  %194 = load i32, i32* %4, align 4
  %195 = load i8*, i8** %5, align 8
  %196 = load i64, i64* %6, align 8
  %197 = call i32 %189(i32 %192, i64 %193, i32 %194, i8* %195, i64 %196)
  br label %198

198:                                              ; preds = %186, %185
  br label %208

199:                                              ; preds = %117
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  %202 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %201, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @FALSE, align 4
  %207 = call i32 %202(i32 %205, i32 %206, i8* null)
  br label %208

208:                                              ; preds = %199, %198
  br label %221

209:                                              ; preds = %36
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 2
  %212 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %211, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @TRUE, align 4
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 %212(i32 %215, i32 %216, i8* %219)
  br label %221

221:                                              ; preds = %209, %208
  ret void
}

declare dso_local i32 @utl_strucmp(i64*, i8*) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i64 @utl_str2int(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
