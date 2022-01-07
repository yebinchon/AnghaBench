; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sendcmd.c_parse_command.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sendcmd.c_parse_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32 }

@SPACES = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"|+]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@COMMAND_FLAG_ENTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"leave\00", align 1
@COMMAND_FLAG_LEAVE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Unknown flag '%s' in interval #%d, command #%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"+|\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Invalid flags char '%c' in interval #%d, command #%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [99 x i8] c"Missing flag terminator or extraneous data found at the end of flags in interval #%d, command #%d\0A\00", align 1
@COMMAND_DELIMS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"No target specified in interval #%d, command #%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"No command specified in interval #%d, command #%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i8**, i8*)* @parse_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_command(%struct.TYPE_4__* %0, i32 %1, i32 %2, i8** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [64 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = call i32 @memset(%struct.TYPE_4__* %15, i32 0, i32 40)
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** @SPACES, align 8
  %23 = call i32 @strspn(i8* %21, i8* %22)
  %24 = load i8**, i8*** %10, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %24, align 8
  %28 = load i8**, i8*** %10, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 91
  br i1 %32, label %33, label %140

33:                                               ; preds = %5
  %34 = load i8**, i8*** %10, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %34, align 8
  br label %37

37:                                               ; preds = %121, %33
  %38 = load i8**, i8*** %10, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %122

42:                                               ; preds = %37
  %43 = load i8**, i8*** %10, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcspn(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %13, align 4
  %46 = load i8**, i8*** %10, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @COMMAND_FLAG_ENTER, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %83

57:                                               ; preds = %42
  %58 = load i8**, i8*** %10, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 @strncmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @COMMAND_FLAG_LEAVE, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %82

69:                                               ; preds = %57
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %71 = load i8**, i8*** %10, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @av_strlcpy(i8* %70, i8* %72, i32 64)
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %74, i32 %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %76, i32 %77, i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = call i32 @AVERROR(i32 %80)
  store i32 %81, i32* %6, align 4
  br label %238

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %51
  %84 = load i32, i32* %13, align 4
  %85 = load i8**, i8*** %10, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = sext i32 %84 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %85, align 8
  %89 = load i8**, i8*** %10, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 93
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %122

95:                                               ; preds = %83
  %96 = load i8**, i8*** %10, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strspn(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %95
  %101 = load i8*, i8** %11, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = load i8**, i8*** %10, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %101, i32 %102, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = call i32 @AVERROR(i32 %110)
  store i32 %111, i32* %6, align 4
  br label %238

112:                                              ; preds = %95
  %113 = load i8**, i8*** %10, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i8**, i8*** %10, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %118, align 8
  br label %121

121:                                              ; preds = %117, %112
  br label %37

122:                                              ; preds = %94, %37
  %123 = load i8**, i8*** %10, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 93
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load i8*, i8** %11, align 8
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %129, i32 %130, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.6, i64 0, i64 0), i32 %131, i32 %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = call i32 @AVERROR(i32 %134)
  store i32 %135, i32* %6, align 4
  br label %238

136:                                              ; preds = %122
  %137 = load i8**, i8*** %10, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %137, align 8
  br label %144

140:                                              ; preds = %5
  %141 = load i32, i32* @COMMAND_FLAG_ENTER, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %140, %136
  %145 = load i8**, i8*** %10, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** @SPACES, align 8
  %148 = call i32 @strspn(i8* %146, i8* %147)
  %149 = load i8**, i8*** %10, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = sext i32 %148 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %149, align 8
  %153 = load i8**, i8*** %10, align 8
  %154 = load i32, i32* @COMMAND_DELIMS, align 4
  %155 = call i8* @av_get_token(i8** %153, i32 %154)
  %156 = bitcast i8* %155 to i32*
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  store i32* %156, i32** %158, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %144
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %163, %144
  %171 = load i8*, i8** %11, align 8
  %172 = load i32, i32* @AV_LOG_ERROR, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %171, i32 %172, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %173, i32 %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = call i32 @AVERROR(i32 %176)
  store i32 %177, i32* %12, align 4
  br label %227

178:                                              ; preds = %163
  %179 = load i8**, i8*** %10, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** @SPACES, align 8
  %182 = call i32 @strspn(i8* %180, i8* %181)
  %183 = load i8**, i8*** %10, align 8
  %184 = load i8*, i8** %183, align 8
  %185 = sext i32 %182 to i64
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8* %186, i8** %183, align 8
  %187 = load i8**, i8*** %10, align 8
  %188 = load i32, i32* @COMMAND_DELIMS, align 4
  %189 = call i8* @av_get_token(i8** %187, i32 %188)
  %190 = bitcast i8* %189 to i32*
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  store i32* %190, i32** %192, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %178
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %197, %178
  %205 = load i8*, i8** %11, align 8
  %206 = load i32, i32* @AV_LOG_ERROR, align 4
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %8, align 4
  %209 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %205, i32 %206, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %207, i32 %208)
  %210 = load i32, i32* @EINVAL, align 4
  %211 = call i32 @AVERROR(i32 %210)
  store i32 %211, i32* %12, align 4
  br label %227

212:                                              ; preds = %197
  %213 = load i8**, i8*** %10, align 8
  %214 = load i8*, i8** %213, align 8
  %215 = load i8*, i8** @SPACES, align 8
  %216 = call i32 @strspn(i8* %214, i8* %215)
  %217 = load i8**, i8*** %10, align 8
  %218 = load i8*, i8** %217, align 8
  %219 = sext i32 %216 to i64
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8* %220, i8** %217, align 8
  %221 = load i8**, i8*** %10, align 8
  %222 = load i32, i32* @COMMAND_DELIMS, align 4
  %223 = call i8* @av_get_token(i8** %221, i32 %222)
  %224 = bitcast i8* %223 to i32*
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  store i32* %224, i32** %226, align 8
  store i32 1, i32* %6, align 4
  br label %238

227:                                              ; preds = %204, %170
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 3
  %230 = call i32 @av_freep(i32** %229)
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 2
  %233 = call i32 @av_freep(i32** %232)
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = call i32 @av_freep(i32** %235)
  %237 = load i32, i32* %12, align 4
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %227, %212, %128, %100, %69
  %239 = load i32, i32* %6, align 4
  ret i32 %239
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_get_token(i8**, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
