; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_send_ind.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_send_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@BTA_AG_IND_CALL = common dso_local global i32 0, align 4
@BTA_AG_IND_CALLSETUP = common dso_local global i32 0, align 4
@BTA_AG_IND_CALLHELD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@BTA_AG_IND_SERVICE = common dso_local global i32 0, align 4
@BTA_AG_IND_SIGNAL = common dso_local global i32 0, align 4
@BTA_AG_IND_ROAM = common dso_local global i32 0, align 4
@BTA_AG_IND_BATTCHG = common dso_local global i32 0, align 4
@BTA_AG_RES_CIEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i64)* @bta_ag_send_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_ag_send_ind(%struct.TYPE_4__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [12 x i8], align 1
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  store i8* %11, i8** %10, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BTA_AG_IND_CALL, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BTA_AG_IND_CALLSETUP, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @BTA_AG_IND_CALLHELD, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %210

32:                                               ; preds = %27, %23, %19, %4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BTA_AG_IND_CALL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @FALSE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %210

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %32
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @BTA_AG_IND_CALLSETUP, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @FALSE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %210

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %69, %58, %54
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @BTA_AG_IND_SERVICE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @FALSE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %210

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %80, %76
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @BTA_AG_IND_SIGNAL, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* @FALSE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %210

113:                                              ; preds = %106
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %113, %102, %98
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @BTA_AG_IND_ROAM, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %120
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @FALSE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %129, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %210

135:                                              ; preds = %128
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %135, %124, %120
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @BTA_AG_IND_BATTCHG, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* @FALSE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %210

157:                                              ; preds = %150
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %157, %146, %142
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @BTA_AG_IND_CALLHELD, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %189

168:                                              ; preds = %164
  %169 = load i64, i64* %8, align 8
  %170 = load i64, i64* @FALSE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 1
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %176, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %210

182:                                              ; preds = %175, %172
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 7
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %182, %168, %164
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 8
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %189
  %195 = load i32, i32* %6, align 4
  %196 = load i8*, i8** %10, align 8
  %197 = call i32 @utl_itoa(i32 %195, i8* %196)
  %198 = load i8*, i8** %10, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %10, align 8
  %201 = load i8*, i8** %10, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %10, align 8
  store i8 44, i8* %201, align 1
  %203 = load i32, i32* %7, align 4
  %204 = load i8*, i8** %10, align 8
  %205 = call i32 @utl_itoa(i32 %203, i8* %204)
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %207 = load i32, i32* @BTA_AG_RES_CIEV, align 4
  %208 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %209 = call i32 @bta_ag_send_result(%struct.TYPE_4__* %206, i32 %207, i8* %208, i32 0)
  br label %210

210:                                              ; preds = %31, %46, %68, %90, %112, %134, %156, %181, %194, %189
  ret void
}

declare dso_local i32 @utl_itoa(i32, i8*) #1

declare dso_local i32 @bta_ag_send_result(%struct.TYPE_4__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
