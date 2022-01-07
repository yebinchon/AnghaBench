; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_bldcclass.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_bldcclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@NCCRUNE = common dso_local global i32 0, align 4
@CCLASS = common dso_local global i32 0, align 4
@yyclassp = common dso_local global %struct.TYPE_3__* null, align 8
@NCCLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"malformed '[]'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bldcclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bldcclass() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @NCCRUNE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i32, i32* @CCLASS, align 4
  store i32 %15, i32* %2, align 4
  %16 = call %struct.TYPE_3__* (...) @newclass()
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** @yyclassp, align 8
  store i8* %14, i8** %6, align 8
  %17 = call i32 @nextc(i8* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %0
  %21 = load i8, i8* %8, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 94
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* @NCCLASS, align 4
  store i32 %25, i32* %2, align 4
  %26 = call i32 @nextc(i8* %8)
  store i32 %26, i32* %9, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  store i8 10, i8* %27, align 1
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  store i8 10, i8* %29, align 1
  br label %31

31:                                               ; preds = %24, %20, %0
  br label %32

32:                                               ; preds = %89, %31
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @NCCRUNE, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %14, i64 %35
  %37 = icmp ult i8* %33, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %32
  %39 = load i8, i8* %8, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @rcerror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %217

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i8, i8* %8, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 93
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %91

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %82, label %55

55:                                               ; preds = %52
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 45
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = icmp eq i8* %60, %14
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @rcerror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %217

64:                                               ; preds = %59
  %65 = call i32 @nextc(i8* %8)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i8, i8* %8, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 93
  br i1 %71, label %76, label %72

72:                                               ; preds = %68, %64
  %73 = load i8, i8* %8, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %68
  %77 = call i32 @rcerror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %217

78:                                               ; preds = %72
  %79 = load i8, i8* %8, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 -1
  store i8 %79, i8* %81, align 1
  br label %89

82:                                               ; preds = %55, %52
  %83 = load i8, i8* %8, align 1
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  store i8 %83, i8* %84, align 1
  %86 = load i8, i8* %8, align 1
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  store i8 %86, i8* %87, align 1
  br label %89

89:                                               ; preds = %82, %78
  %90 = call i32 @nextc(i8* %8)
  store i32 %90, i32* %9, align 4
  br label %32

91:                                               ; preds = %51, %32
  store i8* %14, i8** %5, align 8
  br label %92

92:                                               ; preds = %138, %91
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = icmp ult i8* %93, %94
  br i1 %95, label %96, label %141

96:                                               ; preds = %92
  %97 = load i8*, i8** %5, align 8
  store i8* %97, i8** %7, align 8
  br label %98

98:                                               ; preds = %134, %96
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = icmp ult i8* %99, %100
  br i1 %101, label %102, label %137

102:                                              ; preds = %98
  %103 = load i8*, i8** %7, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = load i8*, i8** %5, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %133

110:                                              ; preds = %102
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  store i8 %113, i8* %8, align 1
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 %116, i8* %118, align 1
  %119 = load i8, i8* %8, align 1
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 %119, i8* %121, align 1
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  store i8 %124, i8* %8, align 1
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  store i8 %127, i8* %129, align 1
  %130 = load i8, i8* %8, align 1
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  store i8 %130, i8* %132, align 1
  br label %133

133:                                              ; preds = %110, %102
  br label %134

134:                                              ; preds = %133
  %135 = load i8*, i8** %7, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  store i8* %136, i8** %7, align 8
  br label %98

137:                                              ; preds = %98
  br label %138

138:                                              ; preds = %137
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 2
  store i8* %140, i8** %5, align 8
  br label %92

141:                                              ; preds = %92
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** @yyclassp, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %7, align 8
  store i8* %14, i8** %5, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = icmp eq i8* %14, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i8*, i8** %7, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** @yyclassp, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  br label %215

151:                                              ; preds = %141
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %5, align 8
  %154 = load i8, i8* %152, align 1
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  store i8 %154, i8* %156, align 1
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %5, align 8
  %159 = load i8, i8* %157, align 1
  %160 = load i8*, i8** %7, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  store i8 %159, i8* %161, align 1
  br label %162

162:                                              ; preds = %207, %151
  %163 = load i8*, i8** %5, align 8
  %164 = load i8*, i8** %6, align 8
  %165 = icmp ult i8* %163, %164
  br i1 %165, label %166, label %210

166:                                              ; preds = %162
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp sle i32 %170, %174
  br i1 %175, label %176, label %193

176:                                              ; preds = %166
  %177 = load i8*, i8** %5, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = load i8*, i8** %7, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp sgt i32 %180, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %176
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  %189 = load i8, i8* %188, align 1
  %190 = load i8*, i8** %7, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  store i8 %189, i8* %191, align 1
  br label %192

192:                                              ; preds = %186, %176
  br label %206

193:                                              ; preds = %166
  %194 = load i8*, i8** %7, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 2
  store i8* %195, i8** %7, align 8
  %196 = load i8*, i8** %5, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = load i8*, i8** %7, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  store i8 %198, i8* %200, align 1
  %201 = load i8*, i8** %5, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = load i8*, i8** %7, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  store i8 %203, i8* %205, align 1
  br label %206

206:                                              ; preds = %193, %192
  br label %207

207:                                              ; preds = %206
  %208 = load i8*, i8** %5, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 2
  store i8* %209, i8** %5, align 8
  br label %162

210:                                              ; preds = %162
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** @yyclassp, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %210, %147
  %216 = load i32, i32* %2, align 4
  store i32 %216, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %217

217:                                              ; preds = %215, %76, %62, %42
  %218 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %218)
  %219 = load i32, i32* %1, align 4
  ret i32 %219
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_3__* @newclass(...) #2

declare dso_local i32 @nextc(i8*) #2

declare dso_local i32 @rcerror(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
