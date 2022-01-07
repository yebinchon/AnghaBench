; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_main.c_Sys_ConsoleInput.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_main.c_Sys_ConsoleInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i8* }
%struct.TYPE_12__ = type { i32 }
%struct.timeval = type { i64, i64 }

@Sys_ConsoleInput.text = internal global [256 x i8] zeroinitializer, align 16
@ttycon = common dso_local global %struct.TYPE_11__* null, align 8
@tty_erase = common dso_local global i8 0, align 1
@tty_con = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"droping ISCTL sequence: %d, tty_erase: %d\0A\00", align 1
@com_dedicated = common dso_local global %struct.TYPE_12__* null, align 8
@stdin_active = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Sys_ConsoleInput() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ttycon, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %168

11:                                               ; preds = %0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ttycon, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %168

16:                                               ; preds = %11
  %17 = call i32 @read(i32 0, i8* %4, i32 1)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %167

20:                                               ; preds = %16
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @tty_erase, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = load i8, i8* %4, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 127
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8, i8* %4, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %45

34:                                               ; preds = %30, %26, %20
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 1), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 0, i8* %42, align 1
  %43 = call i32 (...) @tty_Back()
  br label %44

44:                                               ; preds = %37, %34
  store i8* null, i8** %1, align 8
  br label %207

45:                                               ; preds = %30
  %46 = load i8, i8* %4, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %159

49:                                               ; preds = %45
  %50 = load i8, i8* %4, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp slt i32 %51, 32
  br i1 %52, label %53, label %159

53:                                               ; preds = %49
  %54 = load i8, i8* %4, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = call i32 @Hist_Add(%struct.TYPE_10__* @tty_con)
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 1), align 8
  %60 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Sys_ConsoleInput.text, i64 0, i64 0), i8* %59)
  %61 = call i32 @Field_Clear(%struct.TYPE_10__* @tty_con)
  store i8 10, i8* %4, align 1
  %62 = call i32 @write(i32 1, i8* %4, i32 1)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Sys_ConsoleInput.text, i64 0, i64 0), i8** %1, align 8
  br label %207

63:                                               ; preds = %53
  %64 = load i8, i8* %4, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 9
  br i1 %66, label %67, label %106

67:                                               ; preds = %63
  %68 = call i32 (...) @tty_Hide()
  %69 = call i32 @Field_CompleteCommand(%struct.TYPE_10__* @tty_con)
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 1), align 8
  %71 = call i64 @strlen(i8* %70)
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %67
  %75 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 1), align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 92
  br i1 %79, label %80, label %103

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %97, %80
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  %85 = icmp ule i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 1), align 8
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 1), align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 %92, i8* %96, align 1
  br label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %2, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %2, align 4
  br label %81

100:                                              ; preds = %81
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  br label %103

103:                                              ; preds = %100, %74
  br label %104

104:                                              ; preds = %103, %67
  %105 = call i32 (...) @tty_Show()
  store i8* null, i8** %1, align 8
  br label %207

106:                                              ; preds = %63
  %107 = call i32 @read(i32 0, i8* %4, i32 1)
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* %3, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %154

110:                                              ; preds = %106
  %111 = load i8, i8* %4, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 91
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i8, i8* %4, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 79
  br i1 %117, label %118, label %153

118:                                              ; preds = %114, %110
  %119 = call i32 @read(i32 0, i8* %4, i32 1)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %152

122:                                              ; preds = %118
  %123 = load i8, i8* %4, align 1
  %124 = sext i8 %123 to i32
  switch i32 %124, label %151 [
    i32 65, label %125
    i32 66, label %136
    i32 67, label %149
    i32 68, label %150
  ]

125:                                              ; preds = %122
  %126 = call %struct.TYPE_10__* (...) @Hist_Prev()
  store %struct.TYPE_10__* %126, %struct.TYPE_10__** %5, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = icmp ne %struct.TYPE_10__* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = call i32 (...) @tty_Hide()
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %132 = bitcast %struct.TYPE_10__* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_10__* @tty_con to i8*), i8* align 8 %132, i64 16, i1 false)
  %133 = call i32 (...) @tty_Show()
  br label %134

134:                                              ; preds = %129, %125
  %135 = call i32 (...) @tty_FlushIn()
  store i8* null, i8** %1, align 8
  br label %207

136:                                              ; preds = %122
  %137 = call %struct.TYPE_10__* (...) @Hist_Next()
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %5, align 8
  %138 = call i32 (...) @tty_Hide()
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = icmp ne %struct.TYPE_10__* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = bitcast %struct.TYPE_10__* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_10__* @tty_con to i8*), i8* align 8 %143, i64 16, i1 false)
  br label %146

144:                                              ; preds = %136
  %145 = call i32 @Field_Clear(%struct.TYPE_10__* @tty_con)
  br label %146

146:                                              ; preds = %144, %141
  %147 = call i32 (...) @tty_Show()
  %148 = call i32 (...) @tty_FlushIn()
  store i8* null, i8** %1, align 8
  br label %207

149:                                              ; preds = %122
  store i8* null, i8** %1, align 8
  br label %207

150:                                              ; preds = %122
  store i8* null, i8** %1, align 8
  br label %207

151:                                              ; preds = %122
  br label %152

152:                                              ; preds = %151, %118
  br label %153

153:                                              ; preds = %152, %114
  br label %154

154:                                              ; preds = %153, %106
  %155 = load i8, i8* %4, align 1
  %156 = load i8, i8* @tty_erase, align 1
  %157 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8 signext %155, i8 signext %156)
  %158 = call i32 (...) @tty_FlushIn()
  store i8* null, i8** %1, align 8
  br label %207

159:                                              ; preds = %49, %45
  %160 = load i8, i8* %4, align 1
  %161 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 1), align 8
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8 %160, i8* %163, align 1
  %164 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tty_con, i32 0, i32 0), align 8
  %166 = call i32 @write(i32 1, i8* %4, i32 1)
  br label %167

167:                                              ; preds = %159, %16
  store i8* null, i8** %1, align 8
  br label %207

168:                                              ; preds = %11, %0
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_dedicated, align 8
  %170 = icmp ne %struct.TYPE_12__* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_dedicated, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %171, %168
  store i8* null, i8** %1, align 8
  br label %207

177:                                              ; preds = %171
  %178 = load i64, i64* @stdin_active, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  store i8* null, i8** %1, align 8
  br label %207

181:                                              ; preds = %177
  %182 = call i32 @FD_ZERO(i32* %7)
  %183 = call i32 @FD_SET(i32 0, i32* %7)
  %184 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %184, align 8
  %185 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 0, i64* %185, align 8
  %186 = call i32 @select(i32 1, i32* %7, i32* null, i32* null, %struct.timeval* %8)
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %191, label %188

188:                                              ; preds = %181
  %189 = call i32 @FD_ISSET(i32 0, i32* %7)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %188, %181
  store i8* null, i8** %1, align 8
  br label %207

192:                                              ; preds = %188
  %193 = call i32 @read(i32 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Sys_ConsoleInput.text, i64 0, i64 0), i32 256)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i64, i64* @qfalse, align 8
  store i64 %197, i64* @stdin_active, align 8
  store i8* null, i8** %1, align 8
  br label %207

198:                                              ; preds = %192
  %199 = load i32, i32* %6, align 4
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i8* null, i8** %1, align 8
  br label %207

202:                                              ; preds = %198
  %203 = load i32, i32* %6, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* @Sys_ConsoleInput.text, i64 0, i64 %205
  store i8 0, i8* %206, align 1
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Sys_ConsoleInput.text, i64 0, i64 0), i8** %1, align 8
  br label %207

207:                                              ; preds = %202, %201, %196, %191, %180, %176, %167, %154, %150, %149, %146, %134, %104, %57, %44
  %208 = load i8*, i8** %1, align 8
  ret i8* %208
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @tty_Back(...) #1

declare dso_local i32 @Hist_Add(%struct.TYPE_10__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @Field_Clear(%struct.TYPE_10__*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @tty_Hide(...) #1

declare dso_local i32 @Field_CompleteCommand(%struct.TYPE_10__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @tty_Show(...) #1

declare dso_local %struct.TYPE_10__* @Hist_Prev(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_FlushIn(...) #1

declare dso_local %struct.TYPE_10__* @Hist_Next(...) #1

declare dso_local i32 @Com_DPrintf(i8*, i8 signext, i8 signext) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @FD_ISSET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
