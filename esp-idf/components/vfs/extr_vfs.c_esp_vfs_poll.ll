; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_poll.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i64, i32 }
%struct.timeval = type { i32, i32 }
%struct._reent = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@MAX_FDS = common dso_local global i64 0, align 8
@POLLNVAL = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLRDBAND = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLWRBAND = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_vfs_poll(%struct.pollfd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._reent*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %23 = load i32, i32* %7, align 4
  %24 = srem i32 %23, 1000
  %25 = mul nsw i32 %24, 1000
  store i32 %25, i32* %22, align 4
  store i32 -1, i32* %9, align 4
  %26 = call %struct._reent* (...) @__getreent()
  store %struct._reent* %26, %struct._reent** %13, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %28 = icmp eq %struct.pollfd* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOENT, align 4
  store i32 %30, i32* %15, align 4
  store i32 -1, i32* %4, align 4
  br label %236

31:                                               ; preds = %3
  %32 = call i32 @FD_ZERO(i32* %10)
  %33 = call i32 @FD_ZERO(i32* %11)
  %34 = call i32 @FD_ZERO(i32* %12)
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %150, %31
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %153

39:                                               ; preds = %35
  %40 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %40, i64 %42
  %44 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %45, i64 %47
  %49 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %150

53:                                               ; preds = %39
  %54 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %54, i64 %56
  %58 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MAX_FDS, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %53
  %63 = load i32, i32* @POLLNVAL, align 4
  %64 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %64, i64 %66
  %68 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %63
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %150

73:                                               ; preds = %53
  %74 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %74, i64 %76
  %78 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @POLLIN, align 4
  %81 = load i32, i32* @POLLRDNORM, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @POLLRDBAND, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @POLLPRI, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %79, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %73
  %90 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %90, i64 %92
  %94 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @FD_SET(i64 %95, i32* %10)
  %97 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %97, i64 %99
  %101 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @FD_SET(i64 %102, i32* %12)
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %105, i64 %107
  %109 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @MAX(i32 %104, i64 %110)
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %89, %73
  %113 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %113, i64 %115
  %117 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @POLLOUT, align 4
  %120 = load i32, i32* @POLLWRNORM, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @POLLWRBAND, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %118, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %112
  %127 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %127, i64 %129
  %131 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @FD_SET(i64 %132, i32* %11)
  %134 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %134, i64 %136
  %138 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @FD_SET(i64 %139, i32* %12)
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %142, i64 %144
  %146 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @MAX(i32 %141, i64 %147)
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %126, %112
  br label %150

150:                                              ; preds = %149, %62, %52
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %16, align 4
  br label %35

153:                                              ; preds = %35
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %160

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159, %158
  %161 = phi %struct.timeval* [ null, %158 ], [ %8, %159 ]
  %162 = call i32 @esp_vfs_select(i32 %155, i32* %10, i32* %11, i32* %12, %struct.timeval* %161)
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %232

165:                                              ; preds = %160
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %169

169:                                              ; preds = %228, %165
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %231

173:                                              ; preds = %169
  %174 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %175 = load i32, i32* %18, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %174, i64 %176
  %178 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @FD_ISSET(i64 %179, i32* %10)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %173
  %183 = load i32, i32* @POLLIN, align 4
  %184 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %184, i64 %186
  %188 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %183
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %182, %173
  %192 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %192, i64 %194
  %196 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i64 @FD_ISSET(i64 %197, i32* %11)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %191
  %201 = load i32, i32* @POLLOUT, align 4
  %202 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %202, i64 %204
  %206 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %201
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %200, %191
  %210 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %211 = load i32, i32* %18, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %210, i64 %212
  %214 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @FD_ISSET(i64 %215, i32* %12)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %209
  %219 = load i32, i32* @POLLERR, align 4
  %220 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %221 = load i32, i32* %18, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %220, i64 %222
  %224 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %219
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %218, %209
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %18, align 4
  br label %169

231:                                              ; preds = %169
  br label %234

232:                                              ; preds = %160
  %233 = load i32, i32* %17, align 4
  store i32 %233, i32* %14, align 4
  br label %234

234:                                              ; preds = %232, %231
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %234, %29
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local %struct._reent* @__getreent(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @esp_vfs_select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
