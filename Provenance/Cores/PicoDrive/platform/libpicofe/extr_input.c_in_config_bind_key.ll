; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_config_bind_key.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_config_bind_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i8**, i32 }
%struct.TYPE_5__ = type { i32 (i8*)* }

@IN_BINDTYPE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"input: bad key: %s\0A\00", align 1
@IN_BINDTYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_config_bind_key(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_4__* @get_dev(i32 %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %10, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @IN_BINDTYPE_COUNT, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %4
  store i32 -1, i32* %5, align 4
  br label %196

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 92
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 120
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  store i8* null, i8** %14, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = call i64 @strtoul(i8* %40, i8** %14, i32 16)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load i8*, i8** %14, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** %14, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %38
  store i32 -1, i32* %13, align 4
  br label %51

51:                                               ; preds = %50, %45
  br label %133

52:                                               ; preds = %32, %26
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @in_alloc_binds(i32 %60, i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %196

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %52
  store i32 -1, i32* %13, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i8**, i8*** %75, align 8
  %77 = icmp ne i8** %76, null
  br i1 %77, label %78, label %107

78:                                               ; preds = %73
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %103, %78
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %79
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %15, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load i8*, i8** %15, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i64 @strcasecmp(i8* %96, i8* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %13, align 4
  br label %106

102:                                              ; preds = %95, %85
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %79

106:                                              ; preds = %100, %79
  br label %107

107:                                              ; preds = %106, %73
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*)* @DRV(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 (i8*)* %114, i32 (i8*)** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %117 = load i32 (i8*)*, i32 (i8*)** %116, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 %117(i8* %118)
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %110, %107
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %127, %123, %120
  br label %133

133:                                              ; preds = %132, %51
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp sge i32 %137, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136, %133
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 @lprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %143)
  store i32 -1, i32* %5, align 4
  br label %196

145:                                              ; preds = %136
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @IN_BINDTYPE_NONE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %145
  store i32 0, i32* %11, align 4
  br label %150

150:                                              ; preds = %162, %149
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @IN_BINDTYPE_COUNT, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %11, align 4
  %160 = call i64 @IN_BIND_OFFS(i32 %158, i32 %159)
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 0, i32* %161, align 4
  br label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %150

165:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  br label %196

166:                                              ; preds = %145
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i64 @IN_BIND_OFFS(i32 %167, i32 %168)
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %12, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %186

179:                                              ; preds = %166
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 0, i32* %185, align 4
  br label %186

186:                                              ; preds = %179, %166
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %187
  store i32 %195, i32* %193, align 4
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %186, %165, %142, %71, %25
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local %struct.TYPE_4__* @get_dev(i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32* @in_alloc_binds(i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 (i8*)* @DRV(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lprintf(i8*, i8*) #1

declare dso_local i64 @IN_BIND_OFFS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
