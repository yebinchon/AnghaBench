; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_sleep.c_rtc_sleep_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_sleep.c_rtc_sleep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@RTC_CNTL_TIMER1_REG = common dso_local global i32 0, align 4
@RTC_CNTL_PLL_BUF_WAIT = common dso_local global i32 0, align 4
@RTC_CNTL_PLL_BUF_WAIT_SLP = common dso_local global i32 0, align 4
@RTC_CNTL_XTL_BUF_WAIT = common dso_local global i32 0, align 4
@RTC_CNTL_XTL_BUF_WAIT_SLP = common dso_local global i32 0, align 4
@RTC_CNTL_CK8M_WAIT = common dso_local global i32 0, align 4
@RTC_CNTL_CK8M_WAIT_SLP = common dso_local global i32 0, align 4
@RTC_CNTL_TIMER5_REG = common dso_local global i32 0, align 4
@RTC_CNTL_MIN_SLP_VAL = common dso_local global i32 0, align 4
@RTC_CNTL_MIN_SLP_VAL_MIN = common dso_local global i32 0, align 4
@RTC_CNTL_TIMER3_REG = common dso_local global i32 0, align 4
@RTC_CNTL_ROM_RAM_POWERUP_TIMER = common dso_local global i32 0, align 4
@ROM_RAM_POWERUP_CYCLES = common dso_local global i32 0, align 4
@RTC_CNTL_ROM_RAM_WAIT_TIMER = common dso_local global i32 0, align 4
@ROM_RAM_WAIT_CYCLES = common dso_local global i32 0, align 4
@RTC_CNTL_WIFI_POWERUP_TIMER = common dso_local global i32 0, align 4
@WIFI_POWERUP_CYCLES = common dso_local global i32 0, align 4
@RTC_CNTL_WIFI_WAIT_TIMER = common dso_local global i32 0, align 4
@WIFI_WAIT_CYCLES = common dso_local global i32 0, align 4
@RTC_CNTL_TIMER4_REG = common dso_local global i32 0, align 4
@RTC_CNTL_POWERUP_TIMER = common dso_local global i32 0, align 4
@RTC_POWERUP_CYCLES = common dso_local global i32 0, align 4
@RTC_CNTL_WAIT_TIMER = common dso_local global i32 0, align 4
@RTC_WAIT_CYCLES = common dso_local global i32 0, align 4
@RTC_CNTL_DG_WRAP_POWERUP_TIMER = common dso_local global i32 0, align 4
@DG_WRAP_POWERUP_CYCLES = common dso_local global i32 0, align 4
@RTC_CNTL_DG_WRAP_WAIT_TIMER = common dso_local global i32 0, align 4
@DG_WRAP_WAIT_CYCLES = common dso_local global i32 0, align 4
@RTC_CNTL_RTCMEM_POWERUP_TIMER = common dso_local global i32 0, align 4
@RTC_MEM_POWERUP_CYCLES = common dso_local global i32 0, align 4
@RTC_CNTL_RTCMEM_WAIT_TIMER = common dso_local global i32 0, align 4
@RTC_MEM_WAIT_CYCLES = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_PWC_REG = common dso_local global i32 0, align 4
@RTC_CNTL_LSLP_MEM_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_PWC_REG = common dso_local global i32 0, align 4
@RTC_CNTL_MEM_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_MEM_FOLW_CPU = common dso_local global i32 0, align 4
@RTC_CNTL_FASTMEM_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_FASTMEM_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_FASTMEM_FORCE_NOISO = common dso_local global i32 0, align 4
@RTC_CNTL_SLOWMEM_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_SLOWMEM_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_SLOWMEM_FORCE_NOISO = common dso_local global i32 0, align 4
@RTC_CNTL_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_WIFI_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_CPU_ROM_RAM_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_ISO_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DG_PAD_FORCE_ISO = common dso_local global i32 0, align 4
@RTC_CNTL_DG_PAD_FORCE_NOISO = common dso_local global i32 0, align 4
@RTC_CNTL_DG_WRAP_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_DG_WRAP_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_DG_WRAP_FORCE_PD = common dso_local global i32 0, align 4
@RTC_CNTL_OPTIONS0_REG = common dso_local global i32 0, align 4
@RTC_CNTL_BIAS_FORCE_NOSLEEP = common dso_local global i32 0, align 4
@RTC_CNTL_ANA_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_CKGEN_I2C_PU = common dso_local global i32 0, align 4
@RTC_CNTL_PLL_I2C_PU = common dso_local global i32 0, align 4
@RTC_CNTL_RFRX_PBUS_PU = common dso_local global i32 0, align 4
@RTC_CNTL_TXRF_I2C_PU = common dso_local global i32 0, align 4
@RTC_CNTL_BIAS_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DBG_ATTEN = common dso_local global i32 0, align 4
@RTC_CNTL_XTL_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_CLK_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_ANA_CLK_RTC_SEL = common dso_local global i32 0, align 4
@RTC_SLOW_FREQ_8MD256 = common dso_local global i64 0, align 8
@RTC_CNTL_CK8M_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_FORCE = common dso_local global i32 0, align 4
@RTC_CNTL_SDIO_PD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DBIAS_SLP = common dso_local global i32 0, align 4
@RTC_CNTL_DBIAS_WAK = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_DBIAS_WAK = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_DBIAS_SLP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_sleep_init(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* @RTC_CNTL_TIMER1_REG, align 4
  %4 = load i32, i32* @RTC_CNTL_PLL_BUF_WAIT, align 4
  %5 = load i32, i32* @RTC_CNTL_PLL_BUF_WAIT_SLP, align 4
  %6 = call i32 @REG_SET_FIELD(i32 %3, i32 %4, i32 %5)
  %7 = load i32, i32* @RTC_CNTL_TIMER1_REG, align 4
  %8 = load i32, i32* @RTC_CNTL_XTL_BUF_WAIT, align 4
  %9 = load i32, i32* @RTC_CNTL_XTL_BUF_WAIT_SLP, align 4
  %10 = call i32 @REG_SET_FIELD(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @RTC_CNTL_TIMER1_REG, align 4
  %12 = load i32, i32* @RTC_CNTL_CK8M_WAIT, align 4
  %13 = load i32, i32* @RTC_CNTL_CK8M_WAIT_SLP, align 4
  %14 = call i32 @REG_SET_FIELD(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @RTC_CNTL_TIMER5_REG, align 4
  %16 = load i32, i32* @RTC_CNTL_MIN_SLP_VAL, align 4
  %17 = load i32, i32* @RTC_CNTL_MIN_SLP_VAL_MIN, align 4
  %18 = call i32 @REG_SET_FIELD(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @RTC_CNTL_TIMER3_REG, align 4
  %20 = load i32, i32* @RTC_CNTL_ROM_RAM_POWERUP_TIMER, align 4
  %21 = load i32, i32* @ROM_RAM_POWERUP_CYCLES, align 4
  %22 = call i32 @REG_SET_FIELD(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @RTC_CNTL_TIMER3_REG, align 4
  %24 = load i32, i32* @RTC_CNTL_ROM_RAM_WAIT_TIMER, align 4
  %25 = load i32, i32* @ROM_RAM_WAIT_CYCLES, align 4
  %26 = call i32 @REG_SET_FIELD(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @RTC_CNTL_TIMER3_REG, align 4
  %28 = load i32, i32* @RTC_CNTL_WIFI_POWERUP_TIMER, align 4
  %29 = load i32, i32* @WIFI_POWERUP_CYCLES, align 4
  %30 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @RTC_CNTL_TIMER3_REG, align 4
  %32 = load i32, i32* @RTC_CNTL_WIFI_WAIT_TIMER, align 4
  %33 = load i32, i32* @WIFI_WAIT_CYCLES, align 4
  %34 = call i32 @REG_SET_FIELD(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @RTC_CNTL_TIMER4_REG, align 4
  %36 = load i32, i32* @RTC_CNTL_POWERUP_TIMER, align 4
  %37 = load i32, i32* @RTC_POWERUP_CYCLES, align 4
  %38 = call i32 @REG_SET_FIELD(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @RTC_CNTL_TIMER4_REG, align 4
  %40 = load i32, i32* @RTC_CNTL_WAIT_TIMER, align 4
  %41 = load i32, i32* @RTC_WAIT_CYCLES, align 4
  %42 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @RTC_CNTL_TIMER4_REG, align 4
  %44 = load i32, i32* @RTC_CNTL_DG_WRAP_POWERUP_TIMER, align 4
  %45 = load i32, i32* @DG_WRAP_POWERUP_CYCLES, align 4
  %46 = call i32 @REG_SET_FIELD(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @RTC_CNTL_TIMER4_REG, align 4
  %48 = load i32, i32* @RTC_CNTL_DG_WRAP_WAIT_TIMER, align 4
  %49 = load i32, i32* @DG_WRAP_WAIT_CYCLES, align 4
  %50 = call i32 @REG_SET_FIELD(i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @RTC_CNTL_TIMER5_REG, align 4
  %52 = load i32, i32* @RTC_CNTL_RTCMEM_POWERUP_TIMER, align 4
  %53 = load i32, i32* @RTC_MEM_POWERUP_CYCLES, align 4
  %54 = call i32 @REG_SET_FIELD(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @RTC_CNTL_TIMER5_REG, align 4
  %56 = load i32, i32* @RTC_CNTL_RTCMEM_WAIT_TIMER, align 4
  %57 = load i32, i32* @RTC_MEM_WAIT_CYCLES, align 4
  %58 = call i32 @REG_SET_FIELD(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %60 = load i32, i32* @RTC_CNTL_LSLP_MEM_FORCE_PU, align 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 15
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @REG_SET_FIELD(i32 %59, i32 %60, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 14
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @RTC_SLEEP_PD_CONFIG_ALL(i32 %65)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @rtc_sleep_pd(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 13
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %1
  %73 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %74 = load i32, i32* @RTC_CNTL_MEM_FORCE_PU, align 4
  %75 = call i32 @SET_PERI_REG_MASK(i32 %73, i32 %74)
  br label %80

76:                                               ; preds = %1
  %77 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %78 = load i32, i32* @RTC_CNTL_MEM_FORCE_PU, align 4
  %79 = call i32 @CLEAR_PERI_REG_MASK(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %72
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %86 = load i32, i32* @RTC_CNTL_MEM_FOLW_CPU, align 4
  %87 = call i32 @SET_PERI_REG_MASK(i32 %85, i32 %86)
  br label %92

88:                                               ; preds = %80
  %89 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %90 = load i32, i32* @RTC_CNTL_MEM_FOLW_CPU, align 4
  %91 = call i32 @CLEAR_PERI_REG_MASK(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %98 = load i32, i32* @RTC_CNTL_FASTMEM_PD_EN, align 4
  %99 = call i32 @SET_PERI_REG_MASK(i32 %97, i32 %98)
  %100 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %101 = load i32, i32* @RTC_CNTL_FASTMEM_FORCE_PU, align 4
  %102 = call i32 @CLEAR_PERI_REG_MASK(i32 %100, i32 %101)
  %103 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %104 = load i32, i32* @RTC_CNTL_FASTMEM_FORCE_NOISO, align 4
  %105 = call i32 @CLEAR_PERI_REG_MASK(i32 %103, i32 %104)
  br label %116

106:                                              ; preds = %92
  %107 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %108 = load i32, i32* @RTC_CNTL_FASTMEM_PD_EN, align 4
  %109 = call i32 @CLEAR_PERI_REG_MASK(i32 %107, i32 %108)
  %110 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %111 = load i32, i32* @RTC_CNTL_FASTMEM_FORCE_PU, align 4
  %112 = call i32 @SET_PERI_REG_MASK(i32 %110, i32 %111)
  %113 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %114 = load i32, i32* @RTC_CNTL_FASTMEM_FORCE_NOISO, align 4
  %115 = call i32 @SET_PERI_REG_MASK(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %106, %96
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %122 = load i32, i32* @RTC_CNTL_SLOWMEM_PD_EN, align 4
  %123 = call i32 @SET_PERI_REG_MASK(i32 %121, i32 %122)
  %124 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %125 = load i32, i32* @RTC_CNTL_SLOWMEM_FORCE_PU, align 4
  %126 = call i32 @CLEAR_PERI_REG_MASK(i32 %124, i32 %125)
  %127 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %128 = load i32, i32* @RTC_CNTL_SLOWMEM_FORCE_NOISO, align 4
  %129 = call i32 @CLEAR_PERI_REG_MASK(i32 %127, i32 %128)
  br label %140

130:                                              ; preds = %116
  %131 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %132 = load i32, i32* @RTC_CNTL_SLOWMEM_PD_EN, align 4
  %133 = call i32 @CLEAR_PERI_REG_MASK(i32 %131, i32 %132)
  %134 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %135 = load i32, i32* @RTC_CNTL_SLOWMEM_FORCE_PU, align 4
  %136 = call i32 @SET_PERI_REG_MASK(i32 %134, i32 %135)
  %137 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %138 = load i32, i32* @RTC_CNTL_SLOWMEM_FORCE_NOISO, align 4
  %139 = call i32 @SET_PERI_REG_MASK(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %130, %120
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %146 = load i32, i32* @RTC_CNTL_PD_EN, align 4
  %147 = call i32 @SET_PERI_REG_MASK(i32 %145, i32 %146)
  br label %152

148:                                              ; preds = %140
  %149 = load i32, i32* @RTC_CNTL_PWC_REG, align 4
  %150 = load i32, i32* @RTC_CNTL_PD_EN, align 4
  %151 = call i32 @CLEAR_PERI_REG_MASK(i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %144
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %158 = load i32, i32* @RTC_CNTL_WIFI_PD_EN, align 4
  %159 = call i32 @SET_PERI_REG_MASK(i32 %157, i32 %158)
  br label %164

160:                                              ; preds = %152
  %161 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %162 = load i32, i32* @RTC_CNTL_WIFI_PD_EN, align 4
  %163 = call i32 @CLEAR_PERI_REG_MASK(i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %156
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %170 = load i32, i32* @RTC_CNTL_CPU_ROM_RAM_PD_EN, align 4
  %171 = call i32 @SET_PERI_REG_MASK(i32 %169, i32 %170)
  br label %176

172:                                              ; preds = %164
  %173 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %174 = load i32, i32* @RTC_CNTL_CPU_ROM_RAM_PD_EN, align 4
  %175 = call i32 @CLEAR_PERI_REG_MASK(i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %168
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %206

180:                                              ; preds = %176
  %181 = load i32, i32* @RTC_CNTL_DIG_ISO_REG, align 4
  %182 = load i32, i32* @RTC_CNTL_DG_PAD_FORCE_ISO, align 4
  %183 = load i32, i32* @RTC_CNTL_DG_PAD_FORCE_NOISO, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @CLEAR_PERI_REG_MASK(i32 %181, i32 %184)
  %186 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %187 = load i32, i32* @RTC_CNTL_DG_WRAP_PD_EN, align 4
  %188 = call i32 @SET_PERI_REG_MASK(i32 %186, i32 %187)
  %189 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %190 = load i32, i32* @RTC_CNTL_DG_WRAP_FORCE_PU, align 4
  %191 = load i32, i32* @RTC_CNTL_DG_WRAP_FORCE_PD, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @CLEAR_PERI_REG_MASK(i32 %189, i32 %192)
  %194 = load i32, i32* @RTC_CNTL_OPTIONS0_REG, align 4
  %195 = load i32, i32* @RTC_CNTL_BIAS_FORCE_NOSLEEP, align 4
  %196 = call i32 @CLEAR_PERI_REG_MASK(i32 %194, i32 %195)
  %197 = load i32, i32* @RTC_CNTL_ANA_CONF_REG, align 4
  %198 = load i32, i32* @RTC_CNTL_CKGEN_I2C_PU, align 4
  %199 = load i32, i32* @RTC_CNTL_PLL_I2C_PU, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @RTC_CNTL_RFRX_PBUS_PU, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @RTC_CNTL_TXRF_I2C_PU, align 4
  %204 = or i32 %202, %203
  %205 = call i32 @CLEAR_PERI_REG_MASK(i32 %197, i32 %204)
  br label %213

206:                                              ; preds = %176
  %207 = load i32, i32* @RTC_CNTL_DIG_PWC_REG, align 4
  %208 = load i32, i32* @RTC_CNTL_DG_WRAP_PD_EN, align 4
  %209 = call i32 @CLEAR_PERI_REG_MASK(i32 %207, i32 %208)
  %210 = load i32, i32* @RTC_CNTL_BIAS_CONF_REG, align 4
  %211 = load i32, i32* @RTC_CNTL_DBG_ATTEN, align 4
  %212 = call i32 @REG_SET_FIELD(i32 %210, i32 %211, i32 0)
  br label %213

213:                                              ; preds = %206, %180
  %214 = load i32, i32* @RTC_CNTL_OPTIONS0_REG, align 4
  %215 = load i32, i32* @RTC_CNTL_XTL_FORCE_PU, align 4
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @REG_SET_FIELD(i32 %214, i32 %215, i32 %217)
  %219 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %220 = load i32, i32* @RTC_CNTL_ANA_CLK_RTC_SEL, align 4
  %221 = call i64 @REG_GET_FIELD(i32 %219, i32 %220)
  %222 = load i64, i64* @RTC_SLOW_FREQ_8MD256, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %213
  %225 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %226 = load i32, i32* @RTC_CNTL_CK8M_FORCE_PU, align 4
  %227 = call i32 @REG_SET_BIT(i32 %225, i32 %226)
  br label %232

228:                                              ; preds = %213
  %229 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %230 = load i32, i32* @RTC_CNTL_CK8M_FORCE_PU, align 4
  %231 = call i32 @REG_CLR_BIT(i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %224
  %233 = load i32, i32* @RTC_CNTL_SDIO_CONF_REG, align 4
  %234 = load i32, i32* @RTC_CNTL_SDIO_FORCE, align 4
  %235 = call i32 @REG_CLR_BIT(i32 %233, i32 %234)
  %236 = load i32, i32* @RTC_CNTL_SDIO_CONF_REG, align 4
  %237 = load i32, i32* @RTC_CNTL_SDIO_PD_EN, align 4
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @REG_SET_FIELD(i32 %236, i32 %237, i32 %239)
  %241 = load i32, i32* @RTC_CNTL_REG, align 4
  %242 = load i32, i32* @RTC_CNTL_DBIAS_SLP, align 4
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @REG_SET_FIELD(i32 %241, i32 %242, i32 %244)
  %246 = load i32, i32* @RTC_CNTL_REG, align 4
  %247 = load i32, i32* @RTC_CNTL_DBIAS_WAK, align 4
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @REG_SET_FIELD(i32 %246, i32 %247, i32 %249)
  %251 = load i32, i32* @RTC_CNTL_REG, align 4
  %252 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @REG_SET_FIELD(i32 %251, i32 %252, i32 %254)
  %256 = load i32, i32* @RTC_CNTL_REG, align 4
  %257 = load i32, i32* @RTC_CNTL_DIG_DBIAS_SLP, align 4
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @REG_SET_FIELD(i32 %256, i32 %257, i32 %259)
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @RTC_SLEEP_PD_CONFIG_ALL(i32) #1

declare dso_local i32 @rtc_sleep_pd(i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @REG_SET_BIT(i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
