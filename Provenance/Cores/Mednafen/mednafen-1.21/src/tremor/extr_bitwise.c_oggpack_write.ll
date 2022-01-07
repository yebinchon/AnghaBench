; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_bitwise.c_oggpack_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_bitwise.c_oggpack_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64*, i64*, i32 }

@LONG_MAX = common dso_local global i32 0, align 4
@BUFFER_INCREMENT = common dso_local global i32 0, align 4
@mask = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oggpack_write(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 32
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %192

14:                                               ; preds = %10
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 4
  %22 = icmp sge i32 %17, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %14
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %195

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LONG_MAX, align 4
  %34 = load i32, i32* @BUFFER_INCREMENT, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %192

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BUFFER_INCREMENT, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i8* @_ogg_realloc(i64* %41, i32 %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  br label %192

51:                                               ; preds = %38
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i64*
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i64* %53, i64** %55, align 8
  %56 = load i32, i32* @BUFFER_INCREMENT, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %63, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i64* %68, i64** %70, align 8
  br label %71

71:                                               ; preds = %51, %14
  %72 = load i64*, i64** @mask, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = and i64 %77, %76
  store i64 %78, i64* %5, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = zext i32 %87 to i64
  %89 = shl i64 %84, %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = or i64 %94, %89
  store i64 %95, i64* %93, align 8
  %96 = load i32, i32* %6, align 4
  %97 = icmp sge i32 %96, 8
  br i1 %97, label %98, label %174

98:                                               ; preds = %71
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 8, %102
  %104 = zext i32 %103 to i64
  %105 = lshr i64 %99, %104
  %106 = trunc i64 %105 to i8
  %107 = zext i8 %106 to i64
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 1
  store i64 %107, i64* %111, align 8
  %112 = load i32, i32* %6, align 4
  %113 = icmp sge i32 %112, 16
  br i1 %113, label %114, label %173

114:                                              ; preds = %98
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 16, %118
  %120 = zext i32 %119 to i64
  %121 = lshr i64 %115, %120
  %122 = trunc i64 %121 to i8
  %123 = zext i8 %122 to i64
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 2
  store i64 %123, i64* %127, align 8
  %128 = load i32, i32* %6, align 4
  %129 = icmp sge i32 %128, 24
  br i1 %129, label %130, label %172

130:                                              ; preds = %114
  %131 = load i64, i64* %5, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 24, %134
  %136 = zext i32 %135 to i64
  %137 = lshr i64 %131, %136
  %138 = trunc i64 %137 to i8
  %139 = zext i8 %138 to i64
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 3
  store i64 %139, i64* %143, align 8
  %144 = load i32, i32* %6, align 4
  %145 = icmp sge i32 %144, 32
  br i1 %145, label %146, label %171

146:                                              ; preds = %130
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %146
  %152 = load i64, i64* %5, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 32, %155
  %157 = zext i32 %156 to i64
  %158 = lshr i64 %152, %157
  %159 = trunc i64 %158 to i8
  %160 = zext i8 %159 to i64
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 4
  store i64 %160, i64* %164, align 8
  br label %170

165:                                              ; preds = %146
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 4
  store i64 0, i64* %169, align 8
  br label %170

170:                                              ; preds = %165, %151
  br label %171

171:                                              ; preds = %170, %130
  br label %172

172:                                              ; preds = %171, %114
  br label %173

173:                                              ; preds = %172, %98
  br label %174

174:                                              ; preds = %173, %71
  %175 = load i32, i32* %6, align 4
  %176 = sdiv i32 %175, 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sdiv i32 %181, 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  %185 = load i64*, i64** %184, align 8
  %186 = sext i32 %182 to i64
  %187 = getelementptr inbounds i64, i64* %185, i64 %186
  store i64* %187, i64** %184, align 8
  %188 = load i32, i32* %6, align 4
  %189 = and i32 %188, 7
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 8
  br label %195

192:                                              ; preds = %50, %37, %13
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %194 = call i32 @oggpack_writeclear(%struct.TYPE_4__* %193)
  br label %195

195:                                              ; preds = %192, %174, %28
  ret void
}

declare dso_local i8* @_ogg_realloc(i64*, i32) #1

declare dso_local i32 @oggpack_writeclear(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
