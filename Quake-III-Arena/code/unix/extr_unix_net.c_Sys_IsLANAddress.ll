; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_Sys_IsLANAddress.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_net.c_Sys_IsLANAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@NA_LOOPBACK = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@NA_IPX = common dso_local global i64 0, align 8
@NA_IP = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@numIP = common dso_local global i32 0, align 4
@localIP = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sys_IsLANAddress(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_3__* %4 to { i64, i32* }*
  %7 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %6, i32 0, i32 1
  store i32* %1, i32** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NA_LOOPBACK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @qtrue, align 4
  store i32 %14, i32* %3, align 4
  br label %226

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NA_IPX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @qtrue, align 4
  store i32 %21, i32* %3, align 4
  br label %226

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NA_IP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %3, align 4
  br label %226

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 128
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @numIP, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32**, i32*** @localIP, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %45, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @qtrue, align 4
  store i32 %55, i32* %3, align 4
  br label %226

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %37

60:                                               ; preds = %37
  %61 = load i32, i32* @qfalse, align 4
  store i32 %61, i32* %3, align 4
  br label %226

62:                                               ; preds = %29
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 192
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %142

69:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %137, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @numIP, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %140

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32**, i32*** @localIP, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %78, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32**, i32*** @localIP, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %91, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %87
  %101 = load i32, i32* @qtrue, align 4
  store i32 %101, i32* %3, align 4
  br label %226

102:                                              ; preds = %87, %74
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 172
  br i1 %107, label %108, label %136

108:                                              ; preds = %102
  %109 = load i32**, i32*** @localIP, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 172
  br i1 %116, label %117, label %136

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 240
  %123 = icmp eq i32 %122, 16
  br i1 %123, label %124, label %136

124:                                              ; preds = %117
  %125 = load i32**, i32*** @localIP, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 240
  %133 = icmp eq i32 %132, 16
  br i1 %133, label %134, label %136

134:                                              ; preds = %124
  %135 = load i32, i32* @qtrue, align 4
  store i32 %135, i32* %3, align 4
  br label %226

136:                                              ; preds = %124, %117, %108, %102
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %70

140:                                              ; preds = %70
  %141 = load i32, i32* @qfalse, align 4
  store i32 %141, i32* %3, align 4
  br label %226

142:                                              ; preds = %62
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %221, %142
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @numIP, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %224

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32**, i32*** @localIP, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %151, %158
  br i1 %159, label %160, label %188

160:                                              ; preds = %147
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32**, i32*** @localIP, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %165, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %164, %171
  br i1 %172, label %173, label %188

173:                                              ; preds = %160
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32**, i32*** @localIP, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %177, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %173
  %187 = load i32, i32* @qtrue, align 4
  store i32 %187, i32* %3, align 4
  br label %226

188:                                              ; preds = %173, %160, %147
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 192
  br i1 %193, label %194, label %220

194:                                              ; preds = %188
  %195 = load i32**, i32*** @localIP, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 192
  br i1 %202, label %203, label %220

203:                                              ; preds = %194
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 168
  br i1 %208, label %209, label %220

209:                                              ; preds = %203
  %210 = load i32**, i32*** @localIP, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 168
  br i1 %217, label %218, label %220

218:                                              ; preds = %209
  %219 = load i32, i32* @qtrue, align 4
  store i32 %219, i32* %3, align 4
  br label %226

220:                                              ; preds = %209, %203, %194, %188
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %5, align 4
  br label %143

224:                                              ; preds = %143
  %225 = load i32, i32* @qfalse, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %224, %218, %186, %140, %134, %100, %60, %54, %27, %20, %13
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
