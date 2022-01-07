; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyoutput.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttyoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i64, i32 }

@OPOST = common dso_local global i32 0, align 4
@FLUSHO = common dso_local global i32 0, align 4
@tk_nout = common dso_local global i64 0, align 8
@TTY_CHARMASK = common dso_local global i32 0, align 4
@OXTABS = common dso_local global i32 0, align 4
@EXTPROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"        \00", align 1
@CEOT = common dso_local global i32 0, align 4
@ONOEOT = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@OCRNL = common dso_local global i32 0, align 4
@ONOCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tty*)* @ttyoutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttyoutput(i32 %0, %struct.tty* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.tty* %1, %struct.tty** %5, align 8
  %8 = load %struct.tty*, %struct.tty** %5, align 8
  %9 = call i32 @TTY_LOCK_OWNED(%struct.tty* %8)
  %10 = load %struct.tty*, %struct.tty** %5, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @OPOST, align 4
  %15 = call i64 @ISSET(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %2
  %18 = load %struct.tty*, %struct.tty** %5, align 8
  %19 = getelementptr inbounds %struct.tty, %struct.tty* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FLUSHO, align 4
  %22 = call i64 @ISSET(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %211

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.tty*, %struct.tty** %5, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 1
  %29 = call i64 @putc(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %3, align 4
  br label %211

33:                                               ; preds = %25
  %34 = load i64, i64* @tk_nout, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* @tk_nout, align 8
  %36 = load %struct.tty*, %struct.tty** %5, align 8
  %37 = getelementptr inbounds %struct.tty, %struct.tty* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  store i32 -1, i32* %3, align 4
  br label %211

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @TTY_CHARMASK, align 4
  %43 = xor i32 %42, -1
  %44 = call i32 @CLR(i32 %41, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %101

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @OXTABS, align 4
  %50 = call i64 @ISSET(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %101

52:                                               ; preds = %47
  %53 = load %struct.tty*, %struct.tty** %5, align 8
  %54 = getelementptr inbounds %struct.tty, %struct.tty* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @EXTPROC, align 4
  %57 = call i64 @ISSET(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %101, label %59

59:                                               ; preds = %52
  %60 = load %struct.tty*, %struct.tty** %5, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 7
  %64 = sub nsw i32 8, %63
  store i32 %64, i32* %4, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.tty*, %struct.tty** %5, align 8
  %66 = getelementptr inbounds %struct.tty, %struct.tty* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @FLUSHO, align 4
  %69 = call i64 @ISSET(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.tty*, %struct.tty** %5, align 8
  %74 = getelementptr inbounds %struct.tty, %struct.tty* %73, i32 0, i32 1
  %75 = call i64 @b_to_q(i32* bitcast ([9 x i8]* @.str to i32*), i32 %72, i32* %74)
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @tk_nout, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* @tk_nout, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.tty*, %struct.tty** %5, align 8
  %87 = getelementptr inbounds %struct.tty, %struct.tty* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %71, %59
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.tty*, %struct.tty** %5, align 8
  %93 = getelementptr inbounds %struct.tty, %struct.tty* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 -1, i32 9
  store i32 %100, i32* %3, align 4
  br label %211

101:                                              ; preds = %52, %47, %40
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @CEOT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @ONOEOT, align 4
  %108 = call i64 @ISSET(i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 -1, i32* %3, align 4
  br label %211

111:                                              ; preds = %105, %101
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %112, 10
  br i1 %113, label %114, label %135

114:                                              ; preds = %111
  %115 = load %struct.tty*, %struct.tty** %5, align 8
  %116 = getelementptr inbounds %struct.tty, %struct.tty* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ONLCR, align 4
  %119 = call i64 @ISSET(i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %114
  %122 = load i64, i64* @tk_nout, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* @tk_nout, align 8
  %124 = load %struct.tty*, %struct.tty** %5, align 8
  %125 = getelementptr inbounds %struct.tty, %struct.tty* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.tty*, %struct.tty** %5, align 8
  %129 = getelementptr inbounds %struct.tty, %struct.tty* %128, i32 0, i32 1
  %130 = call i64 @putc(i32 13, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %121
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %3, align 4
  br label %211

134:                                              ; preds = %121
  br label %164

135:                                              ; preds = %114, %111
  %136 = load i32, i32* %4, align 4
  %137 = icmp eq i32 %136, 13
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load %struct.tty*, %struct.tty** %5, align 8
  %140 = getelementptr inbounds %struct.tty, %struct.tty* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @OCRNL, align 4
  %143 = call i64 @ISSET(i32 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i32 10, i32* %4, align 4
  br label %163

146:                                              ; preds = %138, %135
  %147 = load i32, i32* %4, align 4
  %148 = icmp eq i32 %147, 13
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load %struct.tty*, %struct.tty** %5, align 8
  %151 = getelementptr inbounds %struct.tty, %struct.tty* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @ONOCR, align 4
  %154 = call i64 @ISSET(i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load %struct.tty*, %struct.tty** %5, align 8
  %158 = getelementptr inbounds %struct.tty, %struct.tty* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 -1, i32* %3, align 4
  br label %211

162:                                              ; preds = %156, %149, %146
  br label %163

163:                                              ; preds = %162, %145
  br label %164

164:                                              ; preds = %163, %134
  %165 = load i64, i64* @tk_nout, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* @tk_nout, align 8
  %167 = load %struct.tty*, %struct.tty** %5, align 8
  %168 = getelementptr inbounds %struct.tty, %struct.tty* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %168, align 8
  %171 = load %struct.tty*, %struct.tty** %5, align 8
  %172 = getelementptr inbounds %struct.tty, %struct.tty* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @FLUSHO, align 4
  %175 = call i64 @ISSET(i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %164
  %178 = load i32, i32* %4, align 4
  %179 = load %struct.tty*, %struct.tty** %5, align 8
  %180 = getelementptr inbounds %struct.tty, %struct.tty* %179, i32 0, i32 1
  %181 = call i64 @putc(i32 %178, i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %3, align 4
  br label %211

185:                                              ; preds = %177, %164
  %186 = load %struct.tty*, %struct.tty** %5, align 8
  %187 = getelementptr inbounds %struct.tty, %struct.tty* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %4, align 4
  %190 = call i32 @CCLASS(i32 %189)
  switch i32 %190, label %207 [
    i32 133, label %191
    i32 132, label %198
    i32 131, label %199
    i32 129, label %199
    i32 130, label %200
    i32 128, label %203
  ]

191:                                              ; preds = %185
  %192 = load i32, i32* %7, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %194, %191
  br label %207

198:                                              ; preds = %185
  br label %207

199:                                              ; preds = %185, %185
  store i32 0, i32* %7, align 4
  br label %207

200:                                              ; preds = %185
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %207

203:                                              ; preds = %185
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 8
  %206 = and i32 %205, -8
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %185, %203, %200, %199, %198, %197
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.tty*, %struct.tty** %5, align 8
  %210 = getelementptr inbounds %struct.tty, %struct.tty* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  store i32 -1, i32* %3, align 4
  br label %211

211:                                              ; preds = %207, %183, %161, %132, %110, %90, %33, %31, %24
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i64 @putc(i32, i32*) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i64 @b_to_q(i32*, i32, i32*) #1

declare dso_local i32 @CCLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
