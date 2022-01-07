; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackArrayElementToJsonArray.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackArrayElementToJsonArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.TYPE_7__**, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PackArrayElementToJsonArray(i32* %0, i32* %1, %struct.TYPE_8__* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %19, %16, %4
  br label %206

29:                                               ; preds = %22
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %206 [
    i32 131, label %33
    i32 130, label %85
    i32 132, label %118
    i32 129, label %148
    i32 128, label %177
  ]

33:                                               ; preds = %29
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @InStr(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @PackGetIpEx(i32* %45, i32 %48, i32* %9, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %54 = call i32 @IPToStr(i8* %53, i32 64, i32* %9)
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %57 = call i32 @JsonArrayAddStr(i32* %55, i8* %56)
  br label %58

58:                                               ; preds = %52, %44
  br label %59

59:                                               ; preds = %58, %38
  br label %84

60:                                               ; preds = %33
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @PackGetBoolEx(i32* %67, i32 %70, i64 %71)
  %73 = call i32 @JsonArrayAddBool(i32* %66, i32 %72)
  br label %83

74:                                               ; preds = %60
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @PackGetIntEx(i32* %76, i32 %79, i64 %80)
  %82 = call i32 @JsonArrayAddNumber(i32* %75, i32 %81)
  br label %83

83:                                               ; preds = %74, %65
  br label %84

84:                                               ; preds = %83, %59
  br label %206

85:                                               ; preds = %29
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %85
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32*, i32** %5, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @PackGetInt64Ex(i32* %97, i32 %100, i64 %101)
  %103 = call i32 @JsonArrayAddNumber(i32* %96, i32 %102)
  br label %116

104:                                              ; preds = %90
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @PackGetInt64Ex(i32* %106, i32 %109, i64 %110)
  %112 = call i32 @SystemTime64ToJsonStr(i8* %105, i32 64, i32 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %115 = call i32 @JsonArrayAddStr(i32* %113, i8* %114)
  br label %116

116:                                              ; preds = %104, %95
  br label %117

117:                                              ; preds = %116, %85
  br label %206

118:                                              ; preds = %29
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %118
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call %struct.TYPE_9__* @PackGetBufEx(i32* %124, i32 %127, i64 %128)
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %12, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %131 = icmp ne %struct.TYPE_9__* %130, null
  br i1 %131, label %132, label %143

132:                                              ; preds = %123
  %133 = load i32*, i32** %5, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @JsonArrayAddData(i32* %133, i32* %136, i32 %139)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %142 = call i32 @FreeBuf(%struct.TYPE_9__* %141)
  br label %146

143:                                              ; preds = %123
  store i32 0, i32* %13, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @JsonArrayAddData(i32* %144, i32* %13, i32 0)
  br label %146

146:                                              ; preds = %143, %132
  br label %147

147:                                              ; preds = %146, %118
  br label %206

148:                                              ; preds = %29
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %148
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %156, i64 %157
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = icmp ne %struct.TYPE_7__* %159, null
  br i1 %160, label %161, label %172

161:                                              ; preds = %153
  %162 = load i32*, i32** %5, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %164, align 8
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %165, i64 %166
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @JsonArrayAddStr(i32* %162, i8* %170)
  br label %175

172:                                              ; preds = %153
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @JsonArrayAddStr(i32* %173, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %161
  br label %176

176:                                              ; preds = %175, %148
  br label %206

177:                                              ; preds = %29
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %205

182:                                              ; preds = %177
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %184, align 8
  %186 = load i64, i64* %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %185, i64 %186
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = icmp ne %struct.TYPE_7__* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %182
  %191 = load i32*, i32** %5, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %193, align 8
  %195 = load i64, i64* %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %194, i64 %195
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @JsonArrayAddUniStr(i32* %191, i8* %199)
  br label %204

201:                                              ; preds = %182
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @JsonArrayAddUniStr(i32* %202, i8* bitcast ([1 x i32]* @.str.2 to i8*))
  br label %204

204:                                              ; preds = %201, %190
  br label %205

205:                                              ; preds = %204, %177
  br label %206

206:                                              ; preds = %28, %29, %205, %176, %147, %117, %84
  ret void
}

declare dso_local i32 @InStr(i32, i8*) #1

declare dso_local i32 @PackGetIpEx(i32*, i32, i32*, i64) #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #1

declare dso_local i32 @JsonArrayAddStr(i32*, i8*) #1

declare dso_local i32 @JsonArrayAddBool(i32*, i32) #1

declare dso_local i32 @PackGetBoolEx(i32*, i32, i64) #1

declare dso_local i32 @JsonArrayAddNumber(i32*, i32) #1

declare dso_local i32 @PackGetIntEx(i32*, i32, i64) #1

declare dso_local i32 @PackGetInt64Ex(i32*, i32, i64) #1

declare dso_local i32 @SystemTime64ToJsonStr(i8*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @PackGetBufEx(i32*, i32, i64) #1

declare dso_local i32 @JsonArrayAddData(i32*, i32*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_9__*) #1

declare dso_local i32 @JsonArrayAddUniStr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
