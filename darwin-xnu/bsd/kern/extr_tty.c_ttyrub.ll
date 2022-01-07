; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyrub.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyrub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i64, i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ECHO = common dso_local global i32 0, align 4
@EXTPROC = common dso_local global i32 0, align 4
@FLUSHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@TTY_QUOTE = common dso_local global i8 0, align 1
@TTY_CHARMASK = common dso_local global i32 0, align 4
@IUTF8 = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@TS_CNTTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ttyrub: would panic c = %d, val = %d\0A\00", align 1
@ECHOPRT = common dso_local global i32 0, align 4
@TS_ERASE = common dso_local global i32 0, align 4
@VERASE = common dso_local global i64 0, align 8
@PANICSTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tty*)* @ttyrub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttyrub(i32 %0, %struct.tty* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.tty* %1, %struct.tty** %4, align 8
  %8 = load %struct.tty*, %struct.tty** %4, align 8
  %9 = call i32 @TTY_LOCK_OWNED(%struct.tty* %8)
  %10 = load %struct.tty*, %struct.tty** %4, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ECHO, align 4
  %14 = call i64 @ISSET(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.tty*, %struct.tty** %4, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @EXTPROC, align 4
  %21 = call i64 @ISSET(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %2
  br label %219

24:                                               ; preds = %16
  %25 = load %struct.tty*, %struct.tty** %4, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FLUSHO, align 4
  %29 = call i32 @CLR(i32 %27, i32 %28)
  %30 = load %struct.tty*, %struct.tty** %4, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ECHOE, align 4
  %34 = call i64 @ISSET(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %178

36:                                               ; preds = %24
  %37 = load %struct.tty*, %struct.tty** %4, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.tty*, %struct.tty** %4, align 8
  %43 = call i32 @ttyretype(%struct.tty* %42)
  br label %219

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = load i8, i8* @TTY_QUOTE, align 1
  %47 = sext i8 %46 to i32
  %48 = or i32 9, %47
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %3, align 4
  %52 = load i8, i8* @TTY_QUOTE, align 1
  %53 = sext i8 %52 to i32
  %54 = or i32 10, %53
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %44
  %57 = load %struct.tty*, %struct.tty** %4, align 8
  %58 = call i32 @ttyrubo(%struct.tty* %57, i32 2)
  br label %177

59:                                               ; preds = %50
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @TTY_CHARMASK, align 4
  %62 = xor i32 %61, -1
  %63 = call i32 @CLR(i32 %60, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @CCLASS(i32 %64)
  switch i32 %65, label %171 [
    i32 131, label %66
    i32 134, label %81
    i32 133, label %81
    i32 132, label %81
    i32 130, label %81
    i32 128, label %81
    i32 129, label %92
  ]

66:                                               ; preds = %59
  %67 = load %struct.tty*, %struct.tty** %4, align 8
  %68 = getelementptr inbounds %struct.tty, %struct.tty* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IUTF8, align 4
  %71 = call i64 @ISSET(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @CCONT(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.tty*, %struct.tty** %4, align 8
  %79 = call i32 @ttyrubo(%struct.tty* %78, i32 1)
  br label %80

80:                                               ; preds = %77, %73
  br label %176

81:                                               ; preds = %59, %59, %59, %59, %59
  %82 = load %struct.tty*, %struct.tty** %4, align 8
  %83 = getelementptr inbounds %struct.tty, %struct.tty* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ECHOCTL, align 4
  %86 = call i64 @ISSET(i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.tty*, %struct.tty** %4, align 8
  %90 = call i32 @ttyrubo(%struct.tty* %89, i32 2)
  br label %91

91:                                               ; preds = %88, %81
  br label %176

92:                                               ; preds = %59
  %93 = load %struct.tty*, %struct.tty** %4, align 8
  %94 = getelementptr inbounds %struct.tty, %struct.tty* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.tty*, %struct.tty** %4, align 8
  %97 = getelementptr inbounds %struct.tty, %struct.tty* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %95, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.tty*, %struct.tty** %4, align 8
  %103 = call i32 @ttyretype(%struct.tty* %102)
  br label %219

104:                                              ; preds = %92
  %105 = load %struct.tty*, %struct.tty** %4, align 8
  %106 = getelementptr inbounds %struct.tty, %struct.tty* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %6, align 4
  %108 = load %struct.tty*, %struct.tty** %4, align 8
  %109 = getelementptr inbounds %struct.tty, %struct.tty* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @TS_CNTTB, align 4
  %112 = call i32 @SET(i32 %110, i32 %111)
  %113 = load %struct.tty*, %struct.tty** %4, align 8
  %114 = getelementptr inbounds %struct.tty, %struct.tty* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @FLUSHO, align 4
  %117 = call i32 @SET(i32 %115, i32 %116)
  %118 = load %struct.tty*, %struct.tty** %4, align 8
  %119 = getelementptr inbounds %struct.tty, %struct.tty* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.tty*, %struct.tty** %4, align 8
  %122 = getelementptr inbounds %struct.tty, %struct.tty* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.tty*, %struct.tty** %4, align 8
  %124 = getelementptr inbounds %struct.tty, %struct.tty* %123, i32 0, i32 7
  %125 = call i32* @firstc(%struct.TYPE_3__* %124, i32* %7)
  store i32* %125, i32** %5, align 8
  br label %126

126:                                              ; preds = %133, %104
  %127 = load i32*, i32** %5, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.tty*, %struct.tty** %4, align 8
  %132 = call i32 @ttyecho(i32 %130, %struct.tty* %131)
  br label %133

133:                                              ; preds = %129
  %134 = load %struct.tty*, %struct.tty** %4, align 8
  %135 = getelementptr inbounds %struct.tty, %struct.tty* %134, i32 0, i32 7
  %136 = load i32*, i32** %5, align 8
  %137 = call i32* @nextc(%struct.TYPE_3__* %135, i32* %136, i32* %7)
  store i32* %137, i32** %5, align 8
  br label %126

138:                                              ; preds = %126
  %139 = load %struct.tty*, %struct.tty** %4, align 8
  %140 = getelementptr inbounds %struct.tty, %struct.tty* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @FLUSHO, align 4
  %143 = call i32 @CLR(i32 %141, i32 %142)
  %144 = load %struct.tty*, %struct.tty** %4, align 8
  %145 = getelementptr inbounds %struct.tty, %struct.tty* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TS_CNTTB, align 4
  %148 = call i32 @CLR(i32 %146, i32 %147)
  %149 = load %struct.tty*, %struct.tty** %4, align 8
  %150 = getelementptr inbounds %struct.tty, %struct.tty* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %6, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.tty*, %struct.tty** %4, align 8
  %156 = getelementptr inbounds %struct.tty, %struct.tty* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp sgt i32 %159, 8
  br i1 %160, label %161, label %162

161:                                              ; preds = %138
  store i32 8, i32* %6, align 4
  br label %162

162:                                              ; preds = %161, %138
  br label %163

163:                                              ; preds = %167, %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %6, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load %struct.tty*, %struct.tty** %4, align 8
  %169 = call i32 @ttyoutput(i8 signext 8, %struct.tty* %168)
  br label %163

170:                                              ; preds = %163
  br label %176

171:                                              ; preds = %59
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @CCLASS(i32 %173)
  %175 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %172, i32 %174)
  br label %176

176:                                              ; preds = %171, %170, %91, %80
  br label %177

177:                                              ; preds = %176, %56
  br label %214

178:                                              ; preds = %24
  %179 = load %struct.tty*, %struct.tty** %4, align 8
  %180 = getelementptr inbounds %struct.tty, %struct.tty* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @ECHOPRT, align 4
  %183 = call i64 @ISSET(i32 %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %178
  %186 = load %struct.tty*, %struct.tty** %4, align 8
  %187 = getelementptr inbounds %struct.tty, %struct.tty* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @TS_ERASE, align 4
  %190 = call i64 @ISSET(i32 %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %185
  %193 = load %struct.tty*, %struct.tty** %4, align 8
  %194 = getelementptr inbounds %struct.tty, %struct.tty* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @TS_ERASE, align 4
  %197 = call i32 @SET(i32 %195, i32 %196)
  %198 = load %struct.tty*, %struct.tty** %4, align 8
  %199 = call i32 @ttyoutput(i8 signext 92, %struct.tty* %198)
  br label %200

200:                                              ; preds = %192, %185
  %201 = load i32, i32* %3, align 4
  %202 = load %struct.tty*, %struct.tty** %4, align 8
  %203 = call i32 @ttyecho(i32 %201, %struct.tty* %202)
  br label %213

204:                                              ; preds = %178
  %205 = load %struct.tty*, %struct.tty** %4, align 8
  %206 = getelementptr inbounds %struct.tty, %struct.tty* %205, i32 0, i32 6
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @VERASE, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.tty*, %struct.tty** %4, align 8
  %212 = call i32 @ttyecho(i32 %210, %struct.tty* %211)
  br label %213

213:                                              ; preds = %204, %200
  br label %214

214:                                              ; preds = %213, %177
  %215 = load %struct.tty*, %struct.tty** %4, align 8
  %216 = getelementptr inbounds %struct.tty, %struct.tty* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, -1
  store i64 %218, i64* %216, align 8
  br label %219

219:                                              ; preds = %214, %101, %41, %23
  ret void
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @ttyretype(%struct.tty*) #1

declare dso_local i32 @ttyrubo(%struct.tty*, i32) #1

declare dso_local i32 @CCLASS(i32) #1

declare dso_local i32 @CCONT(i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32* @firstc(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ttyecho(i32, %struct.tty*) #1

declare dso_local i32* @nextc(%struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @ttyoutput(i8 signext, %struct.tty*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
