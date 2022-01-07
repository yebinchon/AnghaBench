; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngunknown.c_check_handling.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngunknown.c_check_handling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i64 }
%struct.TYPE_4__ = type { i8*, i8*, i32 }

@chunk_info = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"UNKNOWN (default)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"UNKNOWN (specified)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"chunk processed\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"DEFAULT: unknown chunk saved\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"DISCARD: unknown chunk saved\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"IF-SAFE: unknown ancillary chunk lost\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"IF-SAFE: unknown critical chunk saved\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"SAVE: unknown chunk lost\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"internal error: bad keep\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"KNOWN\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"!DEFAULT: known chunk processed\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"DEFAULT: known chunk not processed\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"DISCARD: known chunk saved\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"IF-SAFE: known ancillary chunk lost\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"IF-SAFE: known critical chunk saved\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"SAVE: known chunk lost\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"internal error: bad keep (2)\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"%s(%s%s): %s %s %s: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c",callback\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32, i32, i8*, i32)* @check_handling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_handling(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  br label %20

20:                                               ; preds = %188, %7
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %193

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 0, %25
  %27 = and i32 %24, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @find_by_flag(i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chunk_info, align 8
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %17, align 4
  store i8* null, i8** %19, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chunk_info, align 8
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %105

43:                                               ; preds = %23
  %44 = load i32, i32* %17, align 4
  %45 = icmp eq i32 %44, 130
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %17, align 4
  br label %49

48:                                               ; preds = %43
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %49

49:                                               ; preds = %48, %46
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %104

55:                                               ; preds = %49
  %56 = load i32, i32* %17, align 4
  switch i32 %56, label %102 [
    i32 130, label %57
    i32 128, label %64
    i32 129, label %71
    i32 131, label %95
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  br label %63

63:                                               ; preds = %62, %57
  br label %103

64:                                               ; preds = %55
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8** %19, align 8
  br label %70

70:                                               ; preds = %69, %64
  br label %103

71:                                               ; preds = %55
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chunk_info, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @ancillary(i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8** %19, align 8
  br label %86

86:                                               ; preds = %85, %80
  br label %94

87:                                               ; preds = %71
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8** %19, align 8
  br label %93

93:                                               ; preds = %92, %87
  br label %94

94:                                               ; preds = %93, %86
  br label %103

95:                                               ; preds = %55
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  br label %101

101:                                              ; preds = %100, %95
  br label %103

102:                                              ; preds = %55
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %19, align 8
  br label %103

103:                                              ; preds = %102, %101, %94, %70, %63
  br label %104

104:                                              ; preds = %103, %54
  br label %159

105:                                              ; preds = %23
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %18, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 130
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8** %19, align 8
  br label %114

114:                                              ; preds = %113, %110
  br label %158

115:                                              ; preds = %105
  %116 = load i32, i32* %17, align 4
  switch i32 %116, label %156 [
    i32 130, label %117
    i32 128, label %118
    i32 129, label %125
    i32 131, label %149
  ]

117:                                              ; preds = %115
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8** %19, align 8
  br label %157

118:                                              ; preds = %115
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %12, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8** %19, align 8
  br label %124

124:                                              ; preds = %123, %118
  br label %157

125:                                              ; preds = %115
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chunk_info, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @ancillary(i8* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %125
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %12, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i8** %19, align 8
  br label %140

140:                                              ; preds = %139, %134
  br label %148

141:                                              ; preds = %125
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %12, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8** %19, align 8
  br label %147

147:                                              ; preds = %146, %141
  br label %148

148:                                              ; preds = %147, %140
  br label %157

149:                                              ; preds = %115
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %12, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8** %19, align 8
  br label %155

155:                                              ; preds = %154, %149
  br label %157

156:                                              ; preds = %115
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8** %19, align 8
  br label %157

157:                                              ; preds = %156, %155, %148, %124, %117
  br label %158

158:                                              ; preds = %157, %114
  br label %159

159:                                              ; preds = %158, %104
  %160 = load i8*, i8** %19, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %188

162:                                              ; preds = %159
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  %167 = load i32, i32* @stderr, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0)
  %178 = load i8*, i8** %18, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** @chunk_info, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** %13, align 8
  %186 = load i8*, i8** %19, align 8
  %187 = call i32 @fprintf(i32 %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* %170, i8* %173, i8* %177, i8* %178, i8* %184, i8* %185, i8* %186)
  br label %188

188:                                              ; preds = %162, %159
  %189 = load i32, i32* %15, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %10, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %10, align 4
  br label %20

193:                                              ; preds = %20
  ret void
}

declare dso_local i32 @find_by_flag(i32) #1

declare dso_local i32 @ancillary(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
