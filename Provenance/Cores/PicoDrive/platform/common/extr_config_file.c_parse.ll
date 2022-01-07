; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_config_file.c_parse.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_config_file.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i64, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"LastUsedROM\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Sound Volume\00", align 1
@currentConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@MB_OPT_ONOFF = common dso_local global i64 0, align 8
@MB_OPT_RANGE = common dso_local global i64 0, align 8
@MB_OPT_ENUM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"config_readsect: unhandled var: \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"config_readsect: unhandled val for \22%s\22: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcasecmp(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %206

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strncasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  store i32 1, i32* %22, align 4
  br label %206

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcasecmp(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 0), align 4
  br label %206

30:                                               ; preds = %23
  %31 = call %struct.TYPE_6__* (...) @me_list_get_first()
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %7, align 8
  br label %32

32:                                               ; preds = %197, %30
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %199

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %197

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcasecmp(i8* %47, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %41
  br label %197

54:                                               ; preds = %46
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MB_OPT_ONOFF, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strtol(i8* %61, i8** %9, i32 0)
  store i32 %62, i32* %8, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %202

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %74
  store i32 %80, i32* %78, align 4
  br label %92

81:                                               ; preds = %68
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = xor i32 %84, -1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %85
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %81, %71
  br label %206

93:                                               ; preds = %54
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MB_OPT_RANGE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %133

99:                                               ; preds = %93
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @strtol(i8* %100, i8** %9, i32 0)
  store i32 %101, i32* %8, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %202

107:                                              ; preds = %99
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %113, %107
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %123, %117
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  store i32 %128, i32* %132, align 4
  br label %206

133:                                              ; preds = %93
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @MB_OPT_ENUM, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %186

139:                                              ; preds = %133
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i8**
  store i8** %143, i8*** %10, align 8
  %144 = load i8**, i8*** %10, align 8
  %145 = icmp eq i8** %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %202

147:                                              ; preds = %139
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %182, %147
  %149 = load i8**, i8*** %10, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %185

155:                                              ; preds = %148
  %156 = load i8**, i8*** %10, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %11, align 8
  br label %161

161:                                              ; preds = %167, %155
  %162 = load i8*, i8** %11, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 32
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  br label %167

167:                                              ; preds = %166
  %168 = load i8*, i8** %11, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %11, align 8
  br label %161

170:                                              ; preds = %161
  %171 = load i8*, i8** %11, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = call i64 @strcasecmp(i8* %171, i8* %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to i32*
  store i32 %176, i32* %180, align 4
  br label %206

181:                                              ; preds = %170
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %148

185:                                              ; preds = %148
  br label %202

186:                                              ; preds = %133
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %188 = load i8*, i8** %4, align 8
  %189 = load i8*, i8** %5, align 8
  %190 = call i64 @custom_read(%struct.TYPE_6__* %187, i8* %188, i8* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %206

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196, %53, %40
  %198 = call %struct.TYPE_6__* (...) @me_list_get_next()
  store %struct.TYPE_6__* %198, %struct.TYPE_6__** %7, align 8
  br label %32

199:                                              ; preds = %32
  %200 = load i8*, i8** %4, align 8
  %201 = call i32 (i8*, i8*, ...) @lprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %200)
  br label %206

202:                                              ; preds = %185, %146, %106, %67
  %203 = load i8*, i8** %4, align 8
  %204 = load i8*, i8** %5, align 8
  %205 = call i32 (i8*, i8*, ...) @lprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %203, i8* %204)
  br label %206

206:                                              ; preds = %202, %199, %192, %175, %127, %92, %27, %21, %16
  ret void
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.TYPE_6__* @me_list_get_first(...) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @custom_read(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @me_list_get_next(...) #1

declare dso_local i32 @lprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
