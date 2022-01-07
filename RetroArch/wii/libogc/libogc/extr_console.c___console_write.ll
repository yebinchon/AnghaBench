; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c___console_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c___console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64, i32, i32, i32, i64 }
%struct._reent = type { i32 }

@__gecko_status = common dso_local global i64 0, align 8
@__gecko_safe = common dso_local global i64 0, align 8
@curr_con = common dso_local global %struct.TYPE_3__* null, align 8
@TAB_SIZE = common dso_local global i32 0, align 4
@FONT_YSIZE = common dso_local global i32 0, align 4
@FONT_YFACTOR = common dso_local global i32 0, align 4
@FONT_YGAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__console_write(%struct._reent* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._reent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct._reent* %0, %struct._reent** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i64, i64* @__gecko_status, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = load i64, i64* @__gecko_safe, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, i64* @__gecko_status, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @usb_sendbuffer_safe(i64 %24, i8* %25, i64 %26)
  br label %33

28:                                               ; preds = %20
  %29 = load i64, i64* @__gecko_status, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @usb_sendbuffer(i64 %29, i8* %30, i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %245

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %12, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = icmp ule i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %38
  store i32 -1, i32* %5, align 4
  br label %245

46:                                               ; preds = %42
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %241, %46
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ult i64 %53, %54
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i1 [ false, %47 ], [ %55, %52 ]
  br i1 %57, label %58, label %242

58:                                               ; preds = %56
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %11, align 8
  %61 = load i8, i8* %59, align 1
  store i8 %61, i8* %13, align 1
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %10, align 8
  %64 = load i8, i8* %13, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 27
  br i1 %66, label %67, label %87

67:                                               ; preds = %58
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 91
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %11, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @__console_parse_escsequence(i8* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %11, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %10, align 8
  br label %165

87:                                               ; preds = %67, %58
  %88 = load i8, i8* %13, align 1
  %89 = sext i8 %88 to i32
  switch i32 %89, label %142 [
    i32 10, label %90
    i32 13, label %97
    i32 8, label %100
    i32 12, label %113
    i32 9, label %118
  ]

90:                                               ; preds = %87
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 0, i32* %96, align 8
  br label %164

97:                                               ; preds = %87
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 0, i32* %99, align 8
  br label %164

100:                                              ; preds = %87
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %100
  br label %164

113:                                              ; preds = %87
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %115, align 8
  br label %164

118:                                              ; preds = %87
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @TAB_SIZE, align 4
  %123 = srem i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %118
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @TAB_SIZE, align 4
  %130 = srem i32 %128, %129
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %141

135:                                              ; preds = %118
  %136 = load i32, i32* @TAB_SIZE, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %135, %125
  br label %164

142:                                              ; preds = %87
  %143 = load i8, i8* %13, align 1
  %144 = call i32 @__console_drawc(i8 signext %143)
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = icmp sge i32 %151, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %142
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  store i32 0, i32* %162, align 8
  br label %163

163:                                              ; preds = %156, %142
  br label %164

164:                                              ; preds = %163, %141, %113, %112, %97, %90
  br label %165

165:                                              ; preds = %164, %72
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp sge i64 %168, %171
  br i1 %172, label %173, label %241

173:                                              ; preds = %165
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @FONT_YSIZE, align 4
  %184 = load i32, i32* @FONT_YFACTOR, align 4
  %185 = mul nsw i32 %183, %184
  %186 = load i32, i32* @FONT_YGAP, align 4
  %187 = add nsw i32 %185, %186
  %188 = mul nsw i32 %182, %187
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %179, %189
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %193, %196
  %198 = load i32, i32* @FONT_YSIZE, align 4
  %199 = sub nsw i32 %197, %198
  %200 = call i32 @memcpy(i64 %176, i64 %190, i32 %199)
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @FONT_YSIZE, align 4
  %205 = load i32, i32* @FONT_YFACTOR, align 4
  %206 = mul nsw i32 %204, %205
  %207 = load i32, i32* @FONT_YGAP, align 4
  %208 = add nsw i32 %206, %207
  %209 = mul nsw i32 %203, %208
  %210 = sdiv i32 %209, 4
  store i32 %210, i32* %15, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 7
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @FONT_YSIZE, align 4
  %221 = sub nsw i32 %219, %220
  %222 = mul nsw i32 %216, %221
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %213, %223
  %225 = inttoptr i64 %224 to i32*
  store i32* %225, i32** %16, align 8
  br label %226

226:                                              ; preds = %230, %173
  %227 = load i32, i32* %15, align 4
  %228 = add i32 %227, -1
  store i32 %228, i32* %15, align 4
  %229 = icmp ne i32 %227, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = load i32*, i32** %16, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %16, align 8
  store i32 %233, i32* %234, align 4
  br label %226

236:                                              ; preds = %226
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, -1
  store i64 %240, i64* %238, align 8
  br label %241

241:                                              ; preds = %236, %165
  br label %47

242:                                              ; preds = %56
  %243 = load i64, i64* %10, align 8
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %5, align 4
  br label %245

245:                                              ; preds = %242, %45, %37
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i32 @usb_sendbuffer_safe(i64, i8*, i64) #1

declare dso_local i32 @usb_sendbuffer(i64, i8*, i64) #1

declare dso_local i32 @__console_parse_escsequence(i8*) #1

declare dso_local i32 @__console_drawc(i8 signext) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
