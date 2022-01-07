; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_proc_listpidspath.c_proc_listpidspath.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_proc_listpidspath.c_proc_listpidspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_listpidspath(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load i8*, i8** %12, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %15, align 8
  store i32 -1, i32* %18, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @proc_listpids(i32 %28, i32 %29, i32* null, i32 0)
  store i32 %30, i32* %7, align 4
  br label %240

31:                                               ; preds = %6
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = urem i64 %33, 4
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %240

44:                                               ; preds = %31
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call %struct.TYPE_6__* @check_init(i8* %45, i32 %46)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %17, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %49 = icmp eq %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  br label %240

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @proc_listpids(i32 %52, i32 %53, i32* null, i32 0)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %236

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %130
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %108

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %72, %65
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, 128
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 8
  br label %66

79:                                               ; preds = %66
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32* @malloc(i32 %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  br label %101

91:                                               ; preds = %79
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32* @reallocf(i32* %94, i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32* %98, i32** %100, align 8
  br label %101

101:                                              ; preds = %91, %84
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %236

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %59
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @proc_listpids(i32 %109, i32 %110, i32* %113, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  br label %236

121:                                              ; preds = %108
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = icmp uge i64 %124, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %121
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = add i64 %134, 4
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %14, align 4
  br label %59

137:                                              ; preds = %121
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = udiv i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %137
  store i32 0, i32* %14, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  br label %149

149:                                              ; preds = %183, %144
  %150 = load i32, i32* %16, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %186

152:                                              ; preds = %149
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %19, align 4
  %160 = load i32, i32* %19, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %183

163:                                              ; preds = %152
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @check_process_phase1(%struct.TYPE_6__* %164, i32 %165)
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp ne i32 %167, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %183

170:                                              ; preds = %163
  %171 = load i32, i32* %19, align 4
  %172 = load i32*, i32** %15, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %15, align 8
  store i32 %171, i32* %172, align 4
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 %175, 4
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp sge i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  br label %186

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %182, %169, %162
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %16, align 4
  br label %149

186:                                              ; preds = %181, %149
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %13, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = load i32, i32* %14, align 4
  store i32 %191, i32* %18, align 4
  br label %236

192:                                              ; preds = %186
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %195, 1
  store i32 %196, i32* %16, align 4
  br label %197

197:                                              ; preds = %231, %192
  %198 = load i32, i32* %16, align 4
  %199 = icmp sge i32 %198, 0
  br i1 %199, label %200, label %234

200:                                              ; preds = %197
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %21, align 4
  %208 = load i32, i32* %21, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %200
  br label %231

211:                                              ; preds = %200
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %213 = load i32, i32* %21, align 4
  %214 = call i32 @check_process_phase2(%struct.TYPE_6__* %212, i32 %213)
  store i32 %214, i32* %22, align 4
  %215 = load i32, i32* %22, align 4
  %216 = icmp ne i32 %215, 1
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %231

218:                                              ; preds = %211
  %219 = load i32, i32* %21, align 4
  %220 = load i32*, i32** %15, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %15, align 8
  store i32 %219, i32* %220, align 4
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = add i64 %223, 4
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %13, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %218
  br label %234

230:                                              ; preds = %218
  br label %231

231:                                              ; preds = %230, %217, %210
  %232 = load i32, i32* %16, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %16, align 4
  br label %197

234:                                              ; preds = %229, %197
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %18, align 4
  br label %236

236:                                              ; preds = %234, %190, %120, %106, %57
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %238 = call i32 @check_free(%struct.TYPE_6__* %237)
  %239 = load i32, i32* %18, align 4
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %236, %50, %42, %27
  %241 = load i32, i32* %7, align 4
  ret i32 %241
}

declare dso_local i32 @proc_listpids(i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @check_init(i8*, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32* @reallocf(i32*, i32) #1

declare dso_local i32 @check_process_phase1(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @check_process_phase2(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @check_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
