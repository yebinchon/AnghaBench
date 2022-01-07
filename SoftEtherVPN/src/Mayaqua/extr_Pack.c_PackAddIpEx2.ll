; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackAddIpEx2.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackAddIpEx2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s@ipv6_bool\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s@ipv6_array\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s@ipv6_scope_id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PackAddIpEx2(i32* %0, i8* %1, %struct.TYPE_9__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [16 x i32], align 16
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %6
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = icmp eq %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %6
  store i32 1, i32* %18, align 4
  br label %193

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = call i32 @IsIP6(%struct.TYPE_9__* %38)
  store i32 %39, i32* %14, align 4
  %40 = trunc i64 %21 to i32
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @Format(i8* %23, i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call %struct.TYPE_10__* @PackAddBoolEx(i32* %43, i8* %23, i32 %44, i32 %45, i32 %46)
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %17, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50, %37
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %58 = icmp ne %struct.TYPE_10__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = trunc i64 %21 to i32
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @Format(i8* %23, i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call %struct.TYPE_10__* @PackAddDataEx(i32* %69, i8* %23, i32* %72, i32 8, i32 %73, i32 %74)
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %17, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %77 = icmp ne %struct.TYPE_10__* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %78, %68
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %86 = icmp ne %struct.TYPE_10__* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %114

91:                                               ; preds = %62
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %93 = call i32 @Zero(i32* %92, i32 64)
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call %struct.TYPE_10__* @PackAddDataEx(i32* %94, i8* %23, i32* %95, i32 64, i32 %96, i32 %97)
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %17, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %100 = icmp ne %struct.TYPE_10__* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %91
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %101, %91
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %109 = icmp ne %struct.TYPE_10__* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %90
  %115 = trunc i64 %21 to i32
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @Format(i8* %23, i32 %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %114
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call %struct.TYPE_10__* @PackAddIntEx(i32* %121, i8* %23, i32 %124, i32 %125, i32 %126)
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %17, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %129 = icmp ne %struct.TYPE_10__* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %120
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %130, %120
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %138 = icmp ne %struct.TYPE_10__* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %136
  br label %163

143:                                              ; preds = %114
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call %struct.TYPE_10__* @PackAddIntEx(i32* %144, i8* %23, i32 0, i32 %145, i32 %146)
  store %struct.TYPE_10__* %147, %struct.TYPE_10__** %17, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %149 = icmp ne %struct.TYPE_10__* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %150, %143
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %158 = icmp ne %struct.TYPE_10__* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162, %142
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %165 = call i32 @IPToUINT(%struct.TYPE_9__* %164)
  store i32 %165, i32* %13, align 4
  %166 = call i64 (...) @IsBigEndian()
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @Swap32(i32 %169)
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %168, %163
  %172 = load i32*, i32** %7, align 8
  %173 = load i8*, i8** %8, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call %struct.TYPE_10__* @PackAddIntEx(i32* %172, i8* %173, i32 %174, i32 %175, i32 %176)
  store %struct.TYPE_10__* %177, %struct.TYPE_10__** %17, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %179 = icmp ne %struct.TYPE_10__* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %171
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  store i32 0, i32* %185, align 4
  br label %186

186:                                              ; preds = %183, %180, %171
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %188 = icmp ne %struct.TYPE_10__* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  br label %192

192:                                              ; preds = %189, %186
  store i32 0, i32* %18, align 4
  br label %193

193:                                              ; preds = %192, %32
  %194 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %194)
  %195 = load i32, i32* %18, align 4
  switch i32 %195, label %197 [
    i32 0, label %196
    i32 1, label %196
  ]

196:                                              ; preds = %193, %193
  ret void

197:                                              ; preds = %193
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IsIP6(%struct.TYPE_9__*) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*) #2

declare dso_local %struct.TYPE_10__* @PackAddBoolEx(i32*, i8*, i32, i32, i32) #2

declare dso_local %struct.TYPE_10__* @PackAddDataEx(i32*, i8*, i32*, i32, i32, i32) #2

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local %struct.TYPE_10__* @PackAddIntEx(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @IPToUINT(%struct.TYPE_9__*) #2

declare dso_local i64 @IsBigEndian(...) #2

declare dso_local i32 @Swap32(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
