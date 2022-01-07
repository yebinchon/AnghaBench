; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_kr.h_iso2022_kr_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_kr.h_iso2022_kr_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@SPLIT_STATE = common dso_local global i32 0, align 4
@ESC = common dso_local global i8 0, align 1
@STATE2_DESIGNATED_KSC5601 = common dso_local global i64 0, align 8
@state2 = common dso_local global i64 0, align 8
@SO = common dso_local global i8 0, align 1
@state1 = common dso_local global i32 0, align 4
@SI = common dso_local global i8 0, align 1
@RET_ILSEQ = common dso_local global i32 0, align 4
@COMBINE_STATE = common dso_local global i32 0, align 4
@STATE2_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i8*, i32)* @iso2022_kr_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_kr_mbtowc(%struct.TYPE_5__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i32, i32* @SPLIT_STATE, align 4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %104, %87, %62, %4
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %12, align 1
  %22 = load i8, i8* %12, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @ESC, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %182

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 36
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 41
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 67
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i64, i64* @STATE2_DESIGNATED_KSC5601, align 8
  store i64 %52, i64* @state2, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  store i8* %54, i8** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %182

62:                                               ; preds = %51
  br label %19

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %39
  br label %65

65:                                               ; preds = %64, %33
  br label %189

66:                                               ; preds = %19
  %67 = load i8, i8* %12, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @SO, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %66
  %73 = load i64, i64* @state2, align 8
  %74 = load i64, i64* @STATE2_DESIGNATED_KSC5601, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %189

77:                                               ; preds = %72
  store i32 128, i32* @state1, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %8, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %182

87:                                               ; preds = %77
  br label %19

88:                                               ; preds = %66
  %89 = load i8, i8* %12, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @SI, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  store i32 129, i32* @state1, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %8, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %182

104:                                              ; preds = %94
  br label %19

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* @state1, align 4
  switch i32 %107, label %180 [
    i32 129, label %108
    i32 128, label %134
  ]

108:                                              ; preds = %106
  %109 = load i8, i8* %12, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp slt i32 %110, 128
  br i1 %111, label %112, label %133

112:                                              ; preds = %108
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @ascii_mbtowc(%struct.TYPE_5__* %113, i32* %114, i8* %115, i32 1)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @RET_ILSEQ, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %189

121:                                              ; preds = %112
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 (...) @abort() #3
  unreachable

126:                                              ; preds = %121
  %127 = load i32, i32* @COMBINE_STATE, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %196

133:                                              ; preds = %108
  br label %189

134:                                              ; preds = %106
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 2
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %182

140:                                              ; preds = %134
  %141 = load i64, i64* @state2, align 8
  %142 = load i64, i64* @STATE2_DESIGNATED_KSC5601, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = call i32 (...) @abort() #3
  unreachable

146:                                              ; preds = %140
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp slt i32 %150, 128
  br i1 %151, label %152, label %179

152:                                              ; preds = %146
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp slt i32 %156, 128
  br i1 %157, label %158, label %179

158:                                              ; preds = %152
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @ksc5601_mbtowc(%struct.TYPE_5__* %159, i32* %160, i8* %161, i32 2)
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* @RET_ILSEQ, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %189

167:                                              ; preds = %158
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 2
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = call i32 (...) @abort() #3
  unreachable

172:                                              ; preds = %167
  %173 = load i32, i32* @COMBINE_STATE, align 4
  %174 = load i8*, i8** %10, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 2
  store i32 %178, i32* %5, align 4
  br label %196

179:                                              ; preds = %152, %146
  br label %189

180:                                              ; preds = %106
  %181 = call i32 (...) @abort() #3
  unreachable

182:                                              ; preds = %139, %103, %86, %61, %32
  %183 = load i32, i32* @COMBINE_STATE, align 4
  %184 = load i8*, i8** %10, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @RET_TOOFEW(i32 %187)
  store i32 %188, i32* %5, align 4
  br label %196

189:                                              ; preds = %179, %166, %133, %120, %76, %65
  %190 = load i32, i32* @COMBINE_STATE, align 4
  %191 = load i8*, i8** %10, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @RET_SHIFT_ILSEQ(i32 %194)
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %189, %182, %172, %126
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @ascii_mbtowc(%struct.TYPE_5__*, i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ksc5601_mbtowc(%struct.TYPE_5__*, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @RET_SHIFT_ILSEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
